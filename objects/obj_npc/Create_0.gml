// Inherit the parent event
event_inherited();

interactAction = function() {
	if (instance_exists(obj_Dialogue)) { return } 
	
	var _dialogue = instance_create_layer(0, 0, "Instances", obj_Dialogue)
	with(_dialogue) {
		_dialogue.add(spr_PlayerIconPink,"Personagem", "Isso é um teste!")
		_dialogue.add(spr_PlayerIconGreen,"???", "Não é legal?")
		_dialogue.add(spr_PlayerIconPink,"Personagem", "Poxa, não acredito que pulou meus diálogos maneiros...")
	}
}

arrowY = y - sprite_width - margin