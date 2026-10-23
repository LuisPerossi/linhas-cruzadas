// Inherit the parent event
event_inherited();

if (!instance_exists(obj_Player)) { exit }

// Facing
var _facing = sign(obj_Player.x - x)

// Stage 1: Chatting
if (curStage == 0) {
	if (_facing != 0)
		image_xscale = _facing
	
	if (global.objective == -1) { 
		global.objective = "Converse com o CEGO" 
		interactable = true
	
		interactAction = function() { 
			if (instance_exists(obj_Dialogue)) { exit }	
			
			var _dialogue = instance_create_layer(x, y, "Instances", obj_Dialogue)
			_dialogue.add(spr_PlayerDialogue, "PERSONAGEM", "JOGAR!")
			_dialogue.add(spr_BlindDialogue, "CEGO", "CONTROLES!")
			
			_dialogue.after = function() { nextStage() }
		}
	}
}

// Stage 2: Walking
if (curStage == 1) {
	if (global.objective == -1) { 
		global.objective = "Acompanhe o CEGO" 
		image_xscale = 1
	}
	
	var _distance = distance_to_object(obj_Player)
	if (_distance <= maxFollowDistance) { x += xspd }
	
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
		global.objective = "Converse com o CEGO" 
		interactable = true
	
		interactAction = function() { 
			if (instance_exists(obj_Dialogue)) { exit }	
			
			var _dialogue = instance_create_layer(x, y, "Instances", obj_Dialogue)
			_dialogue.add(spr_PlayerDialogue, "PERSONAGEM", "Olá mundo!")
			_dialogue.add(spr_BlindDialogue, "CEGO", "Olá mundo!")
			
			_dialogue.after = function() { nextStage() }
		}
	}
}

// Stage 4: Waiting
if (curStage == 3) {
	if (global.objective = -1) {
		global.objective = "Ajude o CEGO a atravessar"
		image_xscale = 1
	}
	
	// Stage controlled by obj_RubbishPile
}

// Stage 5: Talking
if (curStage == 4) {
	if (_facing != 0)
		image_xscale = _facing
	
	if (global.objective == -1) {
		global.objective = "Converse com o CEGO" 
		interactable = true
	
		interactAction = function() { 
			if (instance_exists(obj_Dialogue)) { exit }	
			
			var _dialogue = instance_create_layer(x, y, "Instances", obj_Dialogue)
			_dialogue.add(spr_PlayerDialogue, "PERSONAGEM", "Olá mundo!")
			_dialogue.add(spr_BlindDialogue, "CEGO", "Olá mundo!")
			
			_dialogue.after = function() { nextStage() }
		}
	}
}

// Stage 6: Following
if (curStage == 5) {
	if (global.objective == -1) { 
		global.objective = "Acompanhe o CEGO" 
		image_xscale = 1
	}
	
	var _distance = distance_to_object(obj_Player)
	if (_distance <= maxFollowDistance) { x += xspd }
	
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
		global.objective = "Converse com o CEGO" 
		interactable = true
	
		interactAction = function() { 
			if (instance_exists(obj_Dialogue)) { exit }	
			
			var _dialogue = instance_create_layer(x, y, "Instances", obj_Dialogue)
			_dialogue.add(spr_PlayerDialogue, "PERSONAGEM", "Olá mundo!")
			_dialogue.add(spr_BlindDialogue, "CEGO", "Olá mundo!")
			
			_dialogue.after = function() { nextStage() }
		}
	}
}

// Stage 8: Waiting
if (curStage == 7) {
	if (global.objective = -1) {
		global.objective = "Ajude o CEGO a atravessar"
		image_xscale = 1
	}
	
	// Stage controlled by obj_TrafficLight
}

// Stage 9: Talking
if (curStage == 8) {
	if (_facing != 0)
		image_xscale = _facing
	
	if (global.objective == -1) {
		global.objective = "Converse com o CEGO" 
		interactable = true
	
		interactAction = function() { 
			if (instance_exists(obj_Dialogue)) { exit }	
			
			var _dialogue = instance_create_layer(x, y, "Instances", obj_Dialogue)
			_dialogue.add(spr_PlayerDialogue, "PERSONAGEM", "Olá mundo!")
			_dialogue.add(spr_BlindDialogue, "CEGO", "Olá mundo!")
			
			_dialogue.after = function() { nextStage() }
		}
	}
}

// Stage 10: Following
if (curStage == 9) {
	if (global.objective == -1) { 
		global.objective = "Acompanhe o CEGO" 
		image_xscale = 1
	}
	
	var _distance = distance_to_object(obj_Player)
	if (_distance <= maxFollowDistance) { x += xspd }
	
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
		global.objective = "Converse com o CEGO" 
		interactable = true
	
		interactAction = function() { 
			if (instance_exists(obj_Dialogue)) { exit }	
			
			var _dialogue = instance_create_layer(x, y, "Instances", obj_Dialogue)
			_dialogue.add(spr_PlayerDialogue, "PERSONAGEM", "Olá mundo!")
			_dialogue.add(spr_BlindDialogue, "CEGO", "Olá mundo!")
			
			_dialogue.after = function() { room_goto(Room1) }
		}
	}
}
