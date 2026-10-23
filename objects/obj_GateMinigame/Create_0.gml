allowStart = false

if (instance_exists(obj_Dialogue)) { exit }	
			
var _dialogue = instance_create_layer(x, y, "Instances", obj_Dialogue)
_dialogue.add(spr_PlayerDialogue, "PERSONAGEM", "JOGAR!")
_dialogue.add(spr_BlindDialogue, "CEGO", "CONTROLES!")
			
_dialogue.after = function() { allowStart = true }

sequence = []
answer = [ 3, 4, 2, 1]