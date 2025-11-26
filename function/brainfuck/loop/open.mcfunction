    # elif cmd == '[':
    #     if tape[ptr] == 0:
    #         pc = bracket_map[pc]
function computer_craft_dp:brainfuck/array_get {dest:"#tmp",array:"tape",index_source:"#ptr"}
execute if score #tmp computer_craft_dp.brainfuck matches 0..0 run function computer_craft_dp:brainfuck/bmap_get {source:"#pc",dest:"#pc"}
