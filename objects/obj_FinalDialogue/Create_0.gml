startEnd = false

var _dialogue = instance_create_layer(x, y, "Instances", obj_Dialogue)
_dialogue.add(spr_PhoneDialogue, "LINHAS CRUZADAS", "* TRIMMMM TRIMMM *")
_dialogue.add(spr_PhoneDialogue, "LINHAS CRUZADAS", "Você tem novas mensagens!")
_dialogue.add(spr_MariaDialogue, "???", "Oie ALÍCIA, sou eu, MARIA!") 	
_dialogue.add(spr_MariaDialogue, "MARIA K.", "Eu vi que você testou o meu aplicativo hoje...") 	
_dialogue.add(spr_MariaDialogue, "MARIA K.", "Espero que tenha gostado!") 
_dialogue.add(spr_MariaDialogue, "MARIA K.", "Aquela moça, NAOMI, parece ter gostado muito de você.") 
_dialogue.add(spr_MariaDialogue, "MARIA K.", "Fiquei muito feliz em saber disso!") 
_dialogue.add(spr_MariaDialogue, "MARIA K.", "Mal posso esperar pra saber quantas outras pessoas podemos ajudar!")
_dialogue.add(spr_MariaDialogue, "MARIA K.", "Até maissss!") 

_dialogue.after = function() { 
	global.finished = 1
	startEnd = true 
}