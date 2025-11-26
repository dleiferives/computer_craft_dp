# #         elif cmd == '<':
# #             ptr = ptr - 1 if ptr > 0 else 0
say dec
execute if score #ptr computer_craft_dp.brainfuck matches 1.. run scoreboard players remove #ptr computer_craft_dp.brainfuck 1
execute if score #ptr computer_craft_dp.brainfuck matches ..0 run scoreboard players set #ptr computer_craft_dp.brainfuck 0
