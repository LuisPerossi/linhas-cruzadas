if (!allowStart) { exit }

with (obj_Button1) {
	var _hover = place_meeting(x, y, obj_Cursor)
	var _click = mouse_check_button_pressed(1)
	
	if (_hover && _click) { array_push(other.sequence, 1) }
}

with (obj_Button2) {
	var _hover = place_meeting(x, y, obj_Cursor)
	var _click = mouse_check_button_pressed(1)
	
	if (_hover && _click) { array_push(other.sequence, 2) }
}

with (obj_Button3) {
	var _hover = place_meeting(x, y, obj_Cursor)
	var _click = mouse_check_button_pressed(1)
	
	if (_hover && _click) { array_push(other.sequence, 3) }
}

with (obj_Button4) {
	var _hover = place_meeting(x, y, obj_Cursor)
	var _click = mouse_check_button_pressed(1)
	
	if (_hover && _click) { array_push(other.sequence, 4) }
}

if (array_length(sequence) >= 4) {
	if (array_equals(sequence, answer)) { room_goto(rm_Stage) }
	else { sequence = [] }
}