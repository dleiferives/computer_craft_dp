# inputs
# $(source) -> scoreboard source!

data modify storage computer_craft_dp:utils/tmp brainfuck.bmap merge value {stack_push:{value:0}}
$execute store result storage computer_craft_dp:utils/tmp brainfuck.bmap.stack_push.value int 1 run scoreboard players get $(source) computer_craft_dp.brainfuck

function computer_craft_dp:brainfuck/bmap_stack_push_inner with storage computer_craft_dp:utils/tmp brainfuck.bmap.stack_push
