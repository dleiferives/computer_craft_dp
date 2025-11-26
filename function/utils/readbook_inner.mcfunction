# inputs
# $(page_number)
# $(full_text)
# $(page_text)
$data modify storage computer_craft_dp:utils/tmp stringlib.readbook.full_text set value "$(page_text)$(full_text)"
$data modify storage computer_craft_dp:utils/tmp stringlib.readbook.page_text set from storage computer_craft_dp:utils/tmp stringlib.readbook.pages[$(page_number)].raw
scoreboard players remove test computer_craft_dp.brainfuck 1
execute store result storage computer_craft_dp:utils/tmp stringlib.readbook.page_number int 1 run scoreboard players get test computer_craft_dp.brainfuck
execute if score test computer_craft_dp.brainfuck matches -1.. run function computer_craft_dp:utils/readbook_inner with storage computer_craft_dp:utils/tmp stringlib.readbook
