getControls()

if (place_meeting(x, y, obj_Cursor) and _interactPress) {
	if (instance_exists(obj_Dialogue)) { return } 
	
	var _dialogue = instance_create_layer(0, 0, "Instances", obj_Dialogue)
	
	with (_dialogue) {
		_dialogue.add(spr_PlayerIconPink, "PERSONAGEM", "Hmmm... E que tal esse ITEM aqui?")
		_dialogue.add(spr_PlayerIconPink, "PERSONAGEM", "Acho que não... Não deve servir.")
		_dialogue.add(spr_PlayerIconPink, "PERSONAGEM", "Deve haver outra coisa que possamos usar...")
	}
}

