# requires stringlib to have been setup before this call
# arguments
# $(id) INT -> the number that we're converting to an ascii value, comes from a brainfuck scoreboard
# $(dest) the destination that we're sticking this into, must be a storage

$data modify storage $(dest) set from storage computer_craft_dp:utils/tmp stringlib.ascii_lut[$(id)]
