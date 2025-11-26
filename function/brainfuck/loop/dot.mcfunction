# #         elif cmd == '.':
# #             sys.stdout.write(chr(tape[ptr]))
function computer_craft_dp:brainfuck/array_get {dest:"#tmp",array:"tape",index_source:"#ptr"}
function computer_craft_dp:utils/string/to_ascii {id:"#tmp",dest:"computer_craft_dp:utils/tmp brainfuck.output_tmp"}
function computer_craft_dp:brainfuck/cat_output with storage computer_craft_dp:utils/tmp brainfuck
