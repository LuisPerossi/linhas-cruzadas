var _next = keyboard_check_pressed(ord("E")) or keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(1)

if (_next) {
	audio_stop_sound(snd_Interact)
	audio_play_sound(snd_Interact, 100, false)
	
	if (index < array_length(dialogues) - 1) { 
		index++ 
	} else { 
		after()
		instance_destroy() 
	}
}