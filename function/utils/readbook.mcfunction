execute store result score test computer_craft_dp.brainfuck run data get entity @p SelectedItem.components.minecraft:writable_book_content.pages
execute if score test computer_craft_dp.brainfuck matches 1.. run data modify storage computer_craft_dp:utils/tmp stringlib.readbook.pages set from entity Itra SelectedItem.components.minecraft:writable_book_content.pages
execute unless score test computer_craft_dp.brainfuck matches 1.. run data modify storage computer_craft_dp:utils/tmp stringlib.readbook.pages set from entity Itra SelectedItem.components.minecraft:written_book_content.pages
execute unless score test computer_craft_dp.brainfuck matches 1.. run execute store result score test computer_craft_dp.brainfuck run data get entity @p SelectedItem.components.minecraft:written_book_content.pages
data modify storage computer_craft_dp:utils/tmp stringlib.readbook.full_text set value ""
data modify storage computer_craft_dp:utils/tmp stringlib.readbook.page_text set value ""
scoreboard players remove test computer_craft_dp.brainfuck 1
execute store result storage computer_craft_dp:utils/tmp stringlib.readbook.page_number int 1 run scoreboard players get test computer_craft_dp.brainfuck
execute if score test computer_craft_dp.brainfuck matches 0.. run function computer_craft_dp:utils/readbook_inner with storage computer_craft_dp:utils/tmp stringlib.readbook
