# inputs
# $(dest) -> destination to write to!

$say popping $(dest)
$execute store result $(dest) run data get storage computer_craft_dp:utils/tmp brainfuck.bmap.stack[0]
data remove storage computer_craft_dp:utils/tmp brainfuck.bmap.stack[0]
