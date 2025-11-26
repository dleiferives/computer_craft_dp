function computer_craft_dp:brainfuck/array_get {dest:"#tmp",array:"tape",index_source:"#ptr"}
scoreboard players remove #tmp computer_craft_dp.brainfuck 1
scoreboard players operation #tmp computer_craft_dp.brainfuck %= #256 computer_craft_dp.brainfuck
execute if score #tmp computer_craft_dp.brainfuck matches ..0 run scoreboard players set #tmp computer_craft_dp.brainfuck 0
function computer_craft_dp:brainfuck/array_set {array:"tape",index_dest:"#ptr",source:"#tmp"}
