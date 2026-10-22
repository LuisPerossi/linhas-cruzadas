function getControls() {
	_left = keyboard_check(vk_left) or keyboard_check(ord("A"))
	_right = keyboard_check(vk_right) or keyboard_check(ord("D"))
	_up = keyboard_check(vk_up) or keyboard_check(ord("W"))
	_down = keyboard_check(vk_down) or keyboard_check(ord("S"))
	
	_confirm = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter)
	_jump = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_space)
}

function doChecks() {
	_grounded = place_meeting(x, y + 1, obj_Collision)
}		