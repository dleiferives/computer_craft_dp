# inputs
# $array -> The array we're accessing inside of computer_craft_dp:utils/tmp brainfuck
# $dest -> the  player in the scoreboard computer_craft_dp.brainfuck that we're using
# $index_source -> the player in the scoreboard computer_craft_dp.brainfuck that we're using for the index
$data modify storage computer_craft_dp:utils/tmp brainfuck merge value {array_helper:{array_path:"$(array)",dest:"score $(dest) computer_craft_dp.brainfuck",index:0}}
$execute store result storage computer_craft_dp:utils/tmp brainfuck.array_helper.index int 1 run scoreboard players get $(index_source) computer_craft_dp.brainfuck

function computer_craft_dp:brainfuck/array_helper with storage computer_craft_dp:utils/tmp brainfuck.array_helper
