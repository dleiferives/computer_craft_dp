#inputs
# $start -> the start index
# $pc -> the pc index

$say setting $(start) $(pc)

$data modify storage computer_craft_dp:utils/tmp brainfuck.bmap.map.$(start) set value $(pc)
$data modify storage computer_craft_dp:utils/tmp brainfuck.bmap.map.$(pc) set value $(start)
