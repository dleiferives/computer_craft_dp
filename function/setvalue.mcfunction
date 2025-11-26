$execute as @e[type=item_display,sort=nearest,limit=1] as @s run data modify entity @s item.components.minecraft:custom_data.$(key) set value $(value)
