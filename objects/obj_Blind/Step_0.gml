// Inherit the parent event
event_inherited();

if (!instance_exists(obj_Player)) { exit }

// Facing
var _facing = sign(obj_Player.x - x)

// Resetting speed
xspd = 0

// Stage 1: Chatting
if (curStage == 0) {
	if (_facing != 0)
		image_xscale = _facing
	
	if (global.objective == -1) { 
		global.objective = "Converse com NAOMI" 
		interactable = true
	
		interactAction = function() { 
			if (instance_exists(obj_Dialogue)) { exit }	
			
			var _dialogue = instance_create_layer(x, y, "Instances", obj_Dialogue)
			_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "Olá! Você é a NAOMI, certo?")
			_dialogue.add(spr_BlindDialogue, "NAOMI", "Ahh, olá... Eu mesma!")
			_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "Foi você que solicitou ajuda, não foi?")
			_dialogue.add(spr_BlindDialogue, "NAOMI", "Isso mesmo! A travessia nesse ponto da cidade costuma ser muito difícil para mim...")
			_dialogue.add(spr_BlindDialogue, "NAOMI", "Existem vários pontos que não são acessíveis.")
			_dialogue.add(spr_BlindDialogue, "NAOMI", "Mas graças a esse aplicativo novo, eu consigo pedir suporte!")
			_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "Ahh, realmente, esses pontos costumam ser complicados...")
			_dialogue.add(spr_BlindDialogue, "NAOMI", "Podemos ir então?!")
			_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "Claro, eu serei seus olhos!")
			
			_dialogue.after = function() { nextStage() }
		}
	}
}

// Stage 2: Walking
if (curStage == 1) {
	if (global.objective == -1) { 
		global.objective = "Acompanhe NAOMI" 
		image_xscale = 1
	}
	
	var _distance = distance_to_object(obj_Player)
	if (_distance <= maxFollowDistance) { xspd = spd }
	
	var _inst = instance_place(x, y, obj_BlindSwitch)
	
	if (_inst != noone) {
		instance_destroy(_inst)
		nextStage()
	}
}

// Stage 3: Chatting
if (curStage == 2) {
	if (_facing != 0)
		image_xscale = _facing
	
	if (global.objective == -1) {
		global.objective = "Converse com NAOMI" 
		interactable = true
	
		interactAction = function() { 
			if (instance_exists(obj_Dialogue)) { exit }	
			
			var _dialogue = instance_create_layer(x, y, "Instances", obj_Dialogue)
			_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "Ahh, espere! Tem um buraco enorme logo aí.")
			_dialogue.add(spr_BlindDialogue, "NAOMI", "Essa não, como poderemos prosseguir?")
			_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "Não se preocupe, eu vou dar um jeito!")
			_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "Parece que tem uma caçamba logo ali... Talvez eu possa improvisar uma ponte?")
			
			_dialogue.after = function() { nextStage() }
		}
	}
}

// Stage 4: Waiting
if (curStage == 3) {
	if (global.objective = -1) {
		global.objective = "Ajude NAOMI a atravessar"
		image_xscale = 1
	}
	
	// Stage controlled by obj_RubbishPile
}

// Stage 5: Talking
if (curStage == 4) {
	if (_facing != 0)
		image_xscale = _facing
	
	if (global.objective == -1) {
		global.objective = "Converse com NAOMI" 
		interactable = true
	
		interactAction = function() { 
			if (instance_exists(obj_Dialogue)) { exit }	
			
			var _dialogue = instance_create_layer(x, y, "Instances", obj_Dialogue)
			_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "Prontinho, podemos ir em frente!")
			_dialogue.add(spr_BlindDialogue, "NAOMI", "Que bom, você é demais!")
			
			_dialogue.after = function() { nextStage() }
		}
	}
}

// Stage 6: Following
if (curStage == 5) {
	if (global.objective == -1) { 
		global.objective = "Acompanhe NAOMI" 
		image_xscale = 1
	}
	
	var _distance = distance_to_object(obj_Player)
	if (_distance <= maxFollowDistance) { xspd = spd }
	
	var _inst = instance_place(x, y, obj_BlindSwitch)
	
	if (_inst != noone) {
		instance_destroy(_inst)
		nextStage()
	}
}

// Stage 7: Talking
if (curStage == 6) {
	if (_facing != 0)
		image_xscale = _facing
	
	if (global.objective == -1) {
		global.objective = "Converse com NAOMI" 
		interactable = true
	
		interactAction = function() { 
			if (instance_exists(obj_Dialogue)) { exit }	
			
			var _dialogue = instance_create_layer(x, y, "Instances", obj_Dialogue)
			_dialogue.add(spr_BlindDialogue, "NAOMI", "Ahh, não! O semáforo sonoro ainda não funciona...")
			_dialogue.add(spr_BlindDialogue, "NAOMI", "Esse aqui está quebrado há muito tempo, eu sempre preciso esperar alguém para me acompanhar...")
			_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "É mesmo? Que pena!")
			_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "Deixa eu dar uma olhada, talvez eu possa consertá-lo...")
			_dialogue.add(spr_BlindDialogue, "NAOMI", "Tudo bem, eu espero aqui.")
			
			_dialogue.after = function() { nextStage() }
		}
	}
}

// Stage 8: Waiting
if (curStage == 7) {
	if (global.objective = -1) {
		global.objective = "Ajude NAOMI a atravessar"
		image_xscale = 1
	}
	
	// Stage controlled by obj_TrafficLight
}

// Stage 9: Talking
if (curStage == 8) {
	if (_facing != 0)
		image_xscale = _facing
	
	if (global.objective == -1) {
		global.objective = "Converse com NAOMI" 
		interactable = true
	
		interactAction = function() { 
			if (instance_exists(obj_Dialogue)) { exit }	
			
			var _dialogue = instance_create_layer(x, y, "Instances", obj_Dialogue)
			_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "Mais um problema resolvido!")
			_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "Agora o semáforo sonoro vai emitir um som para indicar a livre travessia!")
			_dialogue.add(spr_BlindDialogue, "NAOMI", "Nossa, muito obrigada!")
			_dialogue.add(spr_BlindDialogue, "NAOMI", "Você está deixando esse percurso todo mais acessível para muita gente!")
			_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "Fico feliz em ajudar!")
			_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "Agora vamos, a faixa está livre.")
			
			_dialogue.after = function() { nextStage() }
		}
	}
}

// Stage 10: Following
if (curStage == 9) {
	if (global.objective == -1) { 
		global.objective = "Acompanhe NAOMI" 
		image_xscale = 1
	}
	
	var _distance = distance_to_object(obj_Player)
	if (_distance <= maxFollowDistance) { xspd = spd }
	
	var _inst = instance_place(x, y, obj_BlindSwitch)
	
	if (_inst != noone) {
		instance_destroy(_inst)
		nextStage()
	}
}

// Stage 11: Final talk
// Stage 9: Talking
if (curStage == 10) {
	if (_facing != 0)
		image_xscale = _facing
	
	if (global.objective == -1) {
		global.objective = "Converse com NAOMI" 
		interactable = true
	
		interactAction = function() { 
			if (instance_exists(obj_Dialogue)) { exit }	
			
			var _dialogue = instance_create_layer(x, y, "Instances", obj_Dialogue)
			_dialogue.add(spr_BlindDialogue, "NAOMI", "O quê?! O Instituto está trancado!")
			_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "Hum?")
			_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "Eu nunca tinha visto essa tranca eletrônica...")
			_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "Parece algum tipo de desafio especial para o Dia da Acessibilidade!")
			_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "Vamos dar uma olhada...")

			_dialogue.after = function() { nextStage() }
		}
	}
}

// Get speed
x += xspd

