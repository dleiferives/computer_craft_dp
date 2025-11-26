#say hi_from_computer_craft
#execute as @e[type=item_display,sort=nearest] if data entity @s item.components.minecraft:custom_data.mov_counter run say hi
execute as @e[type=item_display,sort=nearest] if data entity @s item.components.minecraft:custom_data.mov_counter as @s at @s run tp ~ ~0.1 ~
execute as @e[type=item_display,sort=nearest] if data entity @s item.components.minecraft:custom_data.mov_counter as @s run execute store result score @s computer_craft_dp.movement_sb run data get entity @s item.components.minecraft:custom_data.mov_counter
execute as @e[type=item_display,sort=nearest] if data entity @s item.components.minecraft:custom_data.mov_counter as @s run execute if score @s computer_craft_dp.movement_sb matches ..0 as @s run data remove entity @s item.components.minecraft:custom_data.mov_counter
execute as @e[type=item_display,sort=nearest] if data entity @s item.components.minecraft:custom_data.mov_counter as @s run scoreboard players remove @s computer_craft_dp.movement_sb 1
execute as @e[type=item_display,sort=nearest] if data entity @s item.components.minecraft:custom_data.mov_counter as @s run execute store result entity @s item.components.minecraft:custom_data.mov_counter int 1 run scoreboard players get @s computer_craft_dp.movement_sb
