
scoreboard players set #cmd computer_craft_dp.brainfuck 0
function computer_craft_dp:brainfuck/array_get {dest:"#cmd",array:"code",index_source:"#pc"}

#    bracket_map = {}
#    stack = []
#    for pos, cmd in enumerate(code):
#        if cmd == '[':
#            stack.append(pos)
execute if score #cmd computer_craft_dp.brainfuck matches 7..7 run function computer_craft_dp:brainfuck/bmap_stack_push {source:"#pc"}

#        elif cmd == ']':
#            if not stack:
#                raise SyntaxError(f"Unmatched ']' at position {pos}")
#            bmap_tmp = stack.pop()
#            bracket_map[bmap_tmp] = pos
#            bracket_map[pos] = bmap_tmp

execute if score #cmd computer_craft_dp.brainfuck matches 8..8 run function computer_craft_dp:brainfuck/bmap_stack_pop {dest:"score #bmap_tmp computer_craft_dp.brainfuck"}
execute if score #cmd computer_craft_dp.brainfuck matches 8..8 run function computer_craft_dp:brainfuck/bmap_setter {start:"#bmap_tmp",pc:"#pc"}

scoreboard players add #pc computer_craft_dp.brainfuck 1
execute if score #cmd computer_craft_dp.brainfuck matches 0..0 run say Bmap setup
execute if score #cmd computer_craft_dp.brainfuck matches 0..0 run data get storage computer_craft_dp:utils/tmp brainfuck.bmap

execute if score #cmd computer_craft_dp.brainfuck matches 1.. run function computer_craft_dp:brainfuck/bmap_setup
