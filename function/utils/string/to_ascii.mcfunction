# requires stringlib to have been setup before this call
# arguments
# $(id) INT -> the number that we're converting to an ascii value, comes from a brainfuck scoreboard
# $(dest) the destination that we're sticking this into, must be a storage

$data modify storage computer_craft_dp:utils/tmp stringlib merge value {to_ascii:{dest:"$(dest)",id:0}}
$execute store result storage computer_craft_dp:utils/tmp stringlib.to_ascii.id int 1 run scoreboard players get $(id) computer_craft_dp.brainfuck

function computer_craft_dp:utils/string/to_ascii_inner with storage computer_craft_dp:utils/tmp stringlib.to_ascii
