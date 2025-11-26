# #         if cmd == '>':
# #             ptr += 1
# #             if ptr == len(tape):
# #                 tape.append(0)
say inc
scoreboard players add #ptr computer_craft_dp.brainfuck 1
execute store result score #tmp computer_craft_dp.brainfuck run data get storage computer_craft_dp:utils/tmp brainfuck.tape 1
execute if score #ptr computer_craft_dp.brainfuck = #tmp computer_craft_dp.brainfuck run data modify storage computer_craft_dp:utils/tmp brainfuck.tape append value 0
