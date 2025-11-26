say brainfuck
data modify storage computer_craft_dp:utils/tmp brainfuck merge value {tape:[]}
say tape
function computer_craft_dp:utils/create_zeros_list {path:"brainfuck.tape",length:30}
data modify storage computer_craft_dp:utils/tmp brainfuck merge value {code:[]}
#[1, 3, 3, 3, 3, 3, 3, 3, 3, 7, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 4, 8, 2, 5, 1, 3, 3, 3, 3, 7, 2, 3, 3, 3, 3, 3, 3, 3, 1, 4, 8, 2, 3, 5, 3, 3, 3, 3, 3, 3, 3, 5, 5, 3, 3, 3, 5, 1, 1, 3, 3, 3, 3, 3, 3, 7, 2, 3, 3, 3, 3, 3, 3, 3, 1, 4, 8, 2, 3, 3, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 1, 3, 3, 3, 3, 3, 3, 7, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 4, 8, 2, 3, 5, 2, 5, 3, 3, 3, 5, 4, 4, 4, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 5, 1, 1, 1, 3, 3, 3, 3, 7, 2, 3, 3, 3, 3, 3, 3, 3, 3, 1, 4, 8, 2, 3, 5]}
data modify storage computer_craft_dp:utils/tmp brainfuck merge value {output:""}
data modify storage computer_craft_dp:utils/tmp brainfuck merge value {output_tmp:""}
data modify storage computer_craft_dp:utils/tmp brainfuck merge value {bmap:{stack:[],stack_push:{},map:{}}}
execute store success storage computer_craft_dp:utils/tmp brainfuck.success int 1 run scoreboard objectives add computer_craft_dp.brainfuck dummy
say scoreboard
scoreboard players set #ptr computer_craft_dp.brainfuck 0
scoreboard players set #cmd computer_craft_dp.brainfuck 1
scoreboard players set #pc c;omputer_craft_dp.brainfuck 0
scoreboard players set #depth computer_craft_dp.brainfuck 0
scoreboard players set #tmp computer_craft_dp.brainfuck 0
scoreboard players set #256 computer_craft_dp.brainfuck 256
scoreboard players set #0 computer_craft_dp.brainfuck 0
scoreboard players set #1 computer_craft_dp.brainfuck 1
scoreboard players set #2 computer_craft_dp.brainfuck 2
scoreboard players set #3 computer_craft_dp.brainfuck 3
scoreboard players set #4 computer_craft_dp.brainfuck 4
scoreboard players set #5 computer_craft_dp.brainfuck 5

function computer_craft_dp:utils/stringlib


scoreboard players set #code_at_pc computer_craft_dp.brainfuck 0

execute store result score #code_len computer_craft_dp.brainfuck run data get storage computer_craft_dp:utils/tmp brainfuck.code
#execute store result score #cmd computer_craft_dp.brainfuck run data get storage computer_craft_dp:utils/tmp brainfuck.code

#TODO: add string to array
data modify storage computer_craft_dp:utils/tmp brainfuck merge value {code_string:""}

function computer_craft_dp:utils/readbook
data modify storage computer_craft_dp:utils/tmp brainfuck.code_string set from storage computer_craft_dp:utils/tmp stringlib.readbook.full_text
function computer_craft_dp:brainfuck/parse_code

# # def run(code: str) -> None:
# #     # keep only valid commands
# #     code = [c for c in code if c in '><+-.,[]']
# #     tape = [0] * 30000
# #     ptr = 0
# #     pc = 0

data modify storage computer_craft_dp:utils/tmp brainfuck.bmap set value {bmap:{stack:[],stack_push:{},map:{}}}
scoreboard players set #pc computer_craft_dp.brainfuck 0
function computer_craft_dp:brainfuck/bmap_setup
scoreboard players set #pc computer_craft_dp.brainfuck 0
say map setup!

function computer_craft_dp:brainfuck/main
