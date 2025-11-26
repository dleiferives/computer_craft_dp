say brainfuck
# data modify storage


# $execute as @e[type=item_display,sort=nearest,limit=1] as @s run data modify entity @s item.components.minecraft:custom_data.$(key) set value $(value)


# def run(code: str) -> None:
#     # keep only valid commands
#     code = [c for c in code if c in '><+-.,[]']
#     tape = [0] * 30000
#     ptr = 0
#     pc = 0
#     while pc < len(code):
#         cmd = code[pc]
#         if cmd == '>':
#             ptr += 1
#             if ptr == len(tape):
#                 tape.append(0)
#         elif cmd == '<':
#             ptr = ptr - 1 if ptr > 0 else 0
#         elif cmd == '+':
#             tape[ptr] = (tape[ptr] + 1) % 256
#         elif cmd == '-':
#             tape[ptr] = (tape[ptr] - 1) % 256
#         elif cmd == '.':
#             sys.stdout.write(chr(tape[ptr]))
#         elif cmd == ',':
#             inp = sys.stdin.read(1)
#             tape[ptr] = ord(inp) if inp else 0
#         elif cmd == '[' and tape[ptr] == 0:
#             # jump forward to matching ]
#             depth = 1
#             while depth:
#                 pc += 1
#                 if code[pc] == '[':
#                     depth += 1
#                 elif code[pc] == ']':
#                     depth -= 1
#         elif cmd == ']' and tape[ptr] != 0:
#             # jump back to matching [
#             depth = 1
#             while depth:
#                 pc -= 1
#                 if code[pc] == '[':
#                     depth -= 1
#                 elif code[pc] == ']':
#                     depth += 1
#         pc += 1
