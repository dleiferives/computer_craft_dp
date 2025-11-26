scoreboard players set #parse_len computer_craft_dp.brainfuck 0
execute store result score #parse_length computer_craft_dp.brainfuck run data get storage computer_craft_dp:utils/tmp brainfuck.code_string
data modify storage computer_craft_dp:utils/tmp brainfuck merge value {parse_code:{counter:0,prev:0}}
execute store result storage computer_craft_dp:utils/tmp brainfuck.parse_code.prev int 1 run scoreboard players get #parse_length computer_craft_dp.brainfuck
scoreboard players remove #parse_length computer_craft_dp.brainfuck 1
execute store result storage computer_craft_dp:utils/tmp brainfuck.parse_code.counter int 1 run scoreboard players get #parse_length computer_craft_dp.brainfuck
execute if score #parse_length computer_craft_dp.brainfuck matches 0.. run function computer_craft_dp:brainfuck/parse_code_inner with storage computer_craft_dp:utils/tmp brainfuck.parse_code
