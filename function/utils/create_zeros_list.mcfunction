$data remove storage computer_craft_dp:utils/tmp $(path)
$data modify storage computer_craft_dp:utils/tmp $(path) set value []

scoreboard objectives add computer_craft_dp.utils.tmp dummy
$scoreboard players set #list_length computer_craft_dp.utils.tmp $(length)
scoreboard players set #list_index computer_craft_dp.utils.tmp 0


$function computer_craft_dp:utils/zero_list_loop {path:$(path)}
