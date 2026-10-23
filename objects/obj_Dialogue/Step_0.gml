var _next = keyboard_check_pressed(ord("E")) or mouse_check_button_pressed(1)

if (_next) {
	if (index < array_length(dialogues) - 1) { 
		index++ 
	} else { 
		after()
		instance_destroy() 
	}
}