if (!allowStart) { exit }

if (startEndSequence == 1) {
	
	if (instance_exists(obj_Dialogue)) { exit }	
			
	var _dialogue = instance_create_layer(x, y, "Instances", obj_Dialogue)
	_dialogue.add(spr_BlindDialogue, "NAOMI", "E o último número... é 1.")
	_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "Conseguimos, abriu!")
	_dialogue.add(spr_BlindDialogue, "NAOMI", "Isso sim é trabalho em equipe!")
	_dialogue.add(spr_BlindDialogue, "NAOMI", "Obrigado por me trazer até aqui, ALÍCIA!")
	_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "Disponha! Aproveite o evento!")
	_dialogue.add(spr_BlindDialogue, "NAOMI", "Igualmente!")
			
	_dialogue.after = function() { room_goto(rm_Final) }
	
	startEndSequence = -1
}

if (startEndSequence == -1) { exit }

with (obj_Button1) {
	var _hover = place_meeting(x, y, obj_Cursor)
	var _click = mouse_check_button_pressed(1)
	
	if (_hover && _click) { 
		audio_stop_sound(snd_Interact)
		audio_play_sound(snd_Interact, 100, false)
		array_push(other.sequence, 1) 
	}
}

with (obj_Button2) {
	var _hover = place_meeting(x, y, obj_Cursor)
	var _click = mouse_check_button_pressed(1)
	
	if (_hover && _click) {
		audio_stop_sound(snd_Interact)
		audio_play_sound(snd_Interact, 100, false)
		array_push(other.sequence, 2) 
	}
}

with (obj_Button3) {
	var _hover = place_meeting(x, y, obj_Cursor)
	var _click = mouse_check_button_pressed(1)
	
	if (_hover && _click) { 
		audio_stop_sound(snd_Interact)
		audio_play_sound(snd_Interact, 100, false)
		array_push(other.sequence, 3) 
	}
}

with (obj_Button4) {
	var _hover = place_meeting(x, y, obj_Cursor)
	var _click = mouse_check_button_pressed(1)
	
	if (_hover && _click) { 
		audio_stop_sound(snd_Interact)
		audio_play_sound(snd_Interact, 100, false)
		array_push(other.sequence, 4) 
	}
}

if (array_length(sequence) >= 4) {
	if (array_equals(sequence, answer)) { startEndSequence = 1 }
	else { sequence = [] }
}