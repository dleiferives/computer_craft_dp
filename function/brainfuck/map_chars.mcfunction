# inputs
# $(source) -> the source that the charachter is coming from (must be a single charachter!)


data modify storage computer_craft_dp:utils/tmp brainfuck.bmap.translator set value [">","<","+","-",".",",","[","]"]

$execute store success score #tmp computer_craft_dp.brainfuck run data modify storage computer_craft_dp:utils/tmp brainfuck.bmap.translator[0] set from $(source)
execute if score #tmp computer_craft_dp.brainfuck matches 0..0 run scoreboard players set #ascii_id computer_craft_dp.brainfuck 1

$execute store success score #tmp computer_craft_dp.brainfuck run data modify storage computer_craft_dp:utils/tmp brainfuck.bmap.translator[1] set from $(source)
execute if score #tmp computer_craft_dp.brainfuck matches 0..0 run scoreboard players set #ascii_id computer_craft_dp.brainfuck 2

$execute store success score #tmp computer_craft_dp.brainfuck run data modify storage computer_craft_dp:utils/tmp brainfuck.bmap.translator[2] set from $(source)
execute if score #tmp computer_craft_dp.brainfuck matches 0..0 run scoreboard players set #ascii_id computer_craft_dp.brainfuck 3

$execute store success score #tmp computer_craft_dp.brainfuck run data modify storage computer_craft_dp:utils/tmp brainfuck.bmap.translator[3] set from $(source)
execute if score #tmp computer_craft_dp.brainfuck matches 0..0 run scoreboard players set #ascii_id computer_craft_dp.brainfuck 4

$execute store success score #tmp computer_craft_dp.brainfuck run data modify storage computer_craft_dp:utils/tmp brainfuck.bmap.translator[4] set from $(source)
execute if score #tmp computer_craft_dp.brainfuck matches 0..0 run scoreboard players set #ascii_id computer_craft_dp.brainfuck 5

$execute store success score #tmp computer_craft_dp.brainfuck run data modify storage computer_craft_dp:utils/tmp brainfuck.bmap.translator[5] set from $(source)
execute if score #tmp computer_craft_dp.brainfuck matches 0..0 run scoreboard players set #ascii_id computer_craft_dp.brainfuck 6

$execute store success score #tmp computer_craft_dp.brainfuck run data modify storage computer_craft_dp:utils/tmp brainfuck.bmap.translator[6] set from $(source)
execute if score #tmp computer_craft_dp.brainfuck matches 0..0 run scoreboard players set #ascii_id computer_craft_dp.brainfuck 7

$execute store success score #tmp computer_craft_dp.brainfuck run data modify storage computer_craft_dp:utils/tmp brainfuck.bmap.translator[7] set from $(source)
execute if score #tmp computer_craft_dp.brainfuck matches 0..0 run scoreboard players set #ascii_id computer_craft_dp.brainfuck 8
