var _next = keyboard_check_pressed(ord("E"))

if (_next) {
	if (index < array_length(dialogues) - 1) { 
		index++ 
	} else { 
		after()
		instance_destroy() 
	}
}