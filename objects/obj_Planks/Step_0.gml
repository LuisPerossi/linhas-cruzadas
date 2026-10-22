getControls()

if (place_meeting(x, y, obj_Cursor) and _interactRelease) {
	if (instance_exists(obj_Dialogue)) { return } 
	
	var _dialogue = instance_create_layer(0, 0, "Instances", obj_Dialogue)
	
	with (_dialogue) {
		_dialogue.add(spr_PlayerIconPink, "PERSONAGEM", "Hmmm... E que tal essas tábuas aqui?")
		_dialogue.add(spr_PlayerIconPink, "PERSONAGEM", "Já sei! Deve dar para montar uma passagem!")
		
		_dialogue.onEnd = function() { room_goto(rm_Stage1) }
	}
}

