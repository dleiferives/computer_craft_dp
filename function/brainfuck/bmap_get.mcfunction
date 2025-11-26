# inputs
# $(source) -> scoreboard source!
# $(dest) -> scoreboard dest!

$data modify storage computer_craft_dp:utils/tmp brainfuck.bmap merge value {get:{dest:"$(dest)",value:0}}
$execute store result storage computer_craft_dp:utils/tmp brainfuck.bmap.get.value int 1 run scoreboard players get $(source) computer_craft_dp.brainfuck

function computer_craft_dp:brainfuck/bmap_get_inner with storage computer_craft_dp:utils/tmp brainfuck.bmap.get
