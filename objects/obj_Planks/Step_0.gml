var _hover = place_meeting(x, y, obj_Cursor)
var _click = mouse_check_button_pressed(1)

if (_hover && _click) {
	if (instance_exists(obj_Dialogue)) { exit }
	
	var _dialogue = instance_create_layer(x, y, "Instances", obj_Dialogue)
	_dialogue.add(spr_PlayerDialogue, "PERSONAGEM", "Hmmm... E que tal essas tábuas?")
	_dialogue.add(spr_PlayerDialogue, "PERSONAGEM", "Acho que vão servir... Deve dar para construir uma passagem com elas!")
	_dialogue.after = function() { room_goto(rm_Stage) }
}