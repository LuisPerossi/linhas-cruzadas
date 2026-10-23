if (instance_exists(obj_Dialogue)) { exit }	

if place_meeting(x, y, obj_Player) {
	var _dialogue = instance_create_layer(x, y, "Instances", obj_Dialogue)
	_dialogue.add(spr_PhoneDialogue, "LINHAS CRUZADAS", "* TRIMMMM TRIMMM *")
	_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "Hum?")
	_dialogue.add(spr_PhoneDialogue, "LINHAS CRUZADAS", "Você está se aproximando de alguém que precisa de ajuda!")
	_dialogue.add(spr_PhoneDialogue, "LINHAS CRUZADAS", "A deficiente visual NAOMI se encontra à 100m!")
	_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "Finalmente cheguei. Essa vai ser a primeira pessoa que vou ajudar, mal posso esperar!")
			
	_dialogue.after = function() { instance_destroy() }
}