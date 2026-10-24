var _hover = place_meeting(x, y, obj_Cursor)
var _click = mouse_check_button_pressed(1)

if (_hover && _click) {
	audio_stop_sound(snd_Interact)
	audio_play_sound(snd_Interact, 100, false)
	
	if (instance_exists(obj_Dialogue)) { exit }
	
	var _dialogue = instance_create_layer(x, y, "Instances", obj_Dialogue)
	_dialogue.add(spr_PlayerDialogue, "PERSONAGEM", "Hmmm... E que tal esse ITEM?")
	_dialogue.add(spr_PlayerDialogue, "PERSONAGEM", "Acho que não vai servir! Deve haver algo por perto que eu possa usar...")
}