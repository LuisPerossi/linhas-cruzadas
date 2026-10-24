allowStart = false

startEndSequence = 0

if (instance_exists(obj_Dialogue)) { exit }	
			
var _dialogue = instance_create_layer(x, y, "Instances", obj_Dialogue)
_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "Hmmm, vamos ver...")
_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "Não me lembro de ter nenhuma tranca eletrônia no IF.")
_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "Mas e agora, qual será a senha?")
_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "Espera, aquilo ali parece ser a senha... Mas está em Braille!")
_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "Ah não, eu não sei ler Braille...")
_dialogue.add(spr_BlindDialogue, "NAOMI", "Ahh, parece que agora sou eu quem vai te ajudar!")
_dialogue.add(spr_BlindDialogue, "NAOMI", "Pode deixar essa comigo!")
			
_dialogue.after = function() { allowStart = true }

sequence = []
answer = [ 3, 4, 2, 1]