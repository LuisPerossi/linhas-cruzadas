freqs = [ 2, 0, 1 ]
index = 0

curFreq = -1
allowStart = false

if (instance_exists(obj_Dialogue)) { exit }	
			
var _dialogue = instance_create_layer(x, y, "Instances", obj_Dialogue)
_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "Hmmm... o que temos aqui?")
_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "Ahhh, acho que eu entendi!")
_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "Aquelas ondas sonoras representam o som do semáforo!")
_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "Mas elas parecem desalinhadas...")
_dialogue.add(spr_PlayerDialogue, "ALÍCIA", "Talvez eu possa usar aqueles botões para igualá-las?")
			
_dialogue.after = function() { allowStart = true }