// Move
moveDir = 0
facing = 1
xspd = 0
yspd = 0
spd = 3

// Jumping
grav = .2
jspd = -5
termVel = 5
grounded = false

var _inst = instance_create_layer(0, 0, "Instances", obj_Textbox)
with(_inst) {
	_inst.add(spr_PlayerIconPink,"Personagem", "Isso é um teste!")
	_inst.add(spr_PlayerIconGreen,"???", "Não é legal?")
	_inst.add(spr_PlayerIconPink,"Personagem", "Poxa, não acredito que pulou meus diálogos maneiros...")
}
