# inputs
# $array -> the array that we're going to set and entry to
# $index_dest -> the destination index held in a scoreboard
# $source -> the scoreboard source

$data modify storage computer_craft_dp:utils/tmp brainfuck merge value {array_setter:{array_path:"$(array)",source:"$(source) computer_craft_dp.brainfuck",index_dest:0}}
$execute store result storage computer_craft_dp:utils/tmp brainfuck.array_setter.index_dest int 1 run scoreboard players get $(index_dest) computer_craft_dp.brainfuck

function computer_craft_dp:brainfuck/array_setter with storage computer_craft_dp:utils/tmp brainfuck.array_setter
