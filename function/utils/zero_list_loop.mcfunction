$execute if score #list_index computer_craft_dp.utils.tmp < #list_length computer_craft_dp.utils.tmp run data modify storage computer_craft_dp:utils/tmp $(path) append value 0
execute if score #list_index computer_craft_dp.utils.tmp < #list_length computer_craft_dp.utils.tmp run scoreboard players add #list_index computer_craft_dp.utils.tmp 1
$execute if score #list_index computer_craft_dp.utils.tmp < #list_length computer_craft_dp.utils.tmp run function computer_craft_dp:utils/zero_list_loop {path:$(path)}
