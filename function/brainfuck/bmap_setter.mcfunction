# inputs
# $(start) the first position
# $(pc) -> the current position


data modify storage computer_craft_dp:utils/tmp brainfuck.bmap merge value {bmap_setter:{start:0,pc:0}}
$execute store result storage computer_craft_dp:utils/tmp brainfuck.bmap.bmap_setter.start int 1 run scoreboard players get $(start) computer_craft_dp.brainfuck
$execute store result storage computer_craft_dp:utils/tmp brainfuck.bmap.bmap_setter.pc int 1 run scoreboard players get $(pc) computer_craft_dp.brainfuck

function computer_craft_dp:brainfuck/bmap_setter_inner with storage computer_craft_dp:utils/tmp brainfuck.bmap.bmap_setter
