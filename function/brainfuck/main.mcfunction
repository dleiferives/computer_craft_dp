# #     while pc < len(code):
# #         cmd = code[pc]
scoreboard players set #cmd computer_craft_dp.brainfuck 0
function computer_craft_dp:brainfuck/array_get {dest:"#cmd",array:"code",index_source:"#pc"}

# #         if cmd == '>':
execute if score #cmd computer_craft_dp.brainfuck matches 1..1 run function computer_craft_dp:brainfuck/loop/inc
# #         elif cmd == '<':
execute if score #cmd computer_craft_dp.brainfuck matches 2..2 run function computer_craft_dp:brainfuck/loop/dec
# #         elif cmd == '+':
execute if score #cmd computer_craft_dp.brainfuck matches 3..3 run function computer_craft_dp:brainfuck/loop/plus
# #         elif cmd == '-':
execute if score #cmd computer_craft_dp.brainfuck matches 4..4 run function computer_craft_dp:brainfuck/loop/minus

# #         elif cmd == '.':
execute if score #cmd computer_craft_dp.brainfuck matches 5..5 run function computer_craft_dp:brainfuck/loop/dot

# #         elif cmd == ',':
# #             inp = sys.stdin.read(1)
# #             tape[ptr] = ord(inp) if inp else 0
# function computer_craft_dp:brainfuck/array_set {array:"tape",index_dest:"#ptr",source:"TODO"}

    # elif cmd == '[':

execute if score #cmd computer_craft_dp.brainfuck matches 7..7 run function computer_craft_dp:brainfuck/loop/open
    # elif cmd == ']':
execute if score #cmd computer_craft_dp.brainfuck matches 8..8 run function computer_craft_dp:brainfuck/loop/close
    #     if tape[ptr] != 0:
    #         pc = bracket_map[pc]

# #         pc += 1
scoreboard players add #pc computer_craft_dp.brainfuck 1

execute if score #cmd computer_craft_dp.brainfuck matches 0..0 run say Stopping execution nop encountered
execute if score #cmd computer_craft_dp.brainfuck matches 0..0 run schedule clear computer_craft_dp:brainfuck/main
execute if score #cmd computer_craft_dp.brainfuck matches 1.. run function computer_craft_dp:brainfuck/main
execute if score #cmd computer_craft_dp.brainfuck matches 1.. run schedule function computer_craft_dp:brainfuck/main 1t
