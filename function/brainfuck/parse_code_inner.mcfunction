# $counter -> the lowest value (current)
# $prev -> the last value
#inner:
$data modify storage computer_craft_dp:utils/tmp brainfuck.code_char set string storage computer_craft_dp:utils/tmp brainfuck.code_string $(counter) $(prev)
function computer_craft_dp:brainfuck/map_chars {source:"storage computer_craft_dp:utils/tmp brainfuck.code_char"}
execute store result storage computer_craft_dp:utils/tmp brainfuck.code_id int 1 run scoreboard players get #ascii_id computer_craft_dp.brainfuck
data modify storage computer_craft_dp:utils/tmp brainfuck.code prepend from storage computer_craft_dp:utils/tmp brainfuck.code_id

execute store result storage computer_craft_dp:utils/tmp brainfuck.parse_code.prev int 1 run scoreboard players get #parse_length computer_craft_dp.brainfuck
scoreboard players remove #parse_length computer_craft_dp.brainfuck 1
execute store result storage computer_craft_dp:utils/tmp brainfuck.parse_code.counter int 1 run scoreboard players get #parse_length computer_craft_dp.brainfuck
execute if score #parse_length computer_craft_dp.brainfuck matches 0.. run function computer_craft_dp:brainfuck/parse_code_inner with storage computer_craft_dp:utils/tmp brainfuck.parse_code
