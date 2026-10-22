function getControls() {
	_left = keyboard_check(vk_left) or keyboard_check(ord("A"))
	_right = keyboard_check(vk_right) or keyboard_check(ord("D"))
	_up = keyboard_check(vk_up) or keyboard_check(ord("W"))
	_down = keyboard_check(vk_down) or keyboard_check(ord("S"))
	
	
	
	_jump = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_space)
	_interactPress = keyboard_check_pressed(ord("E")) or keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(1)
	_interactRelease = keyboard_check_released(ord("E")) or keyboard_check_released(vk_enter) or mouse_check_button_released(1)
	//_confirm = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter)
	//_interact = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"))
}