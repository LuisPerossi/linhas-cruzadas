if (global.estado_jogo == "MENU") { exit }

// Sprites Handling
if (onGround && (xspd == 0))
	sprite_index = spr_PlayerIdle

if (onGround && (xspd != 0))
	sprite_index = spr_PlayerWalk

if (!onGround)
	sprite_index = spr_PlayerJump