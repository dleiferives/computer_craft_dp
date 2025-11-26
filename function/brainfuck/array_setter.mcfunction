# inputs
# $array_path -> the path to the array
# $source -> the source that will be written to the thing
# $indext_dest -> the destination index in the array path
$execute store result storage computer_craft_dp:utils/tmp brainfuck.$(array_path)[$(index_dest)] int 1 run scoreboard players get $(source)
