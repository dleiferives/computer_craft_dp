# inputs
# $(value) -> the value to push to the stack
$say pushing $(value)
$data modify storage computer_craft_dp:utils/tmp brainfuck.bmap.stack prepend value $(value)
