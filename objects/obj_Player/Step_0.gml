getControls()

if (global.estado_jogo == "MENU") { exit }

if (instance_exists(obj_Dialogue)) {
	xspd = 0
	exit 
} 

// Variable setup
moveDir = _right - _left
var _subPixel = 1

// Facing direction
if (moveDir != 0)
	facing = moveDir
	
image_xscale = facing

// Calculate xspd
xspd = moveDir * spd

// X Collision
if (place_meeting(x + xspd, y, obj_Collision)) {
	while (!place_meeting(x + sign(xspd), y, obj_Collision)) 
		x += _subPixel * sign(xspd)
	xspd = 0
}

// Gravity
yspd += grav

// Jumping
if _jump and onGround {
	audio_play_sound(snd_Jump, 11, false)
	yspd = jspd
}
	
// Fall speed cap
if yspd > termVel
	yspd = termVel

// Y Collision
if (place_meeting(x, y + yspd, obj_Collision)) {
	while (!place_meeting(x, y + sign(yspd), obj_Collision)) 
		y += _subPixel * sign(yspd)
	yspd = 0
}

// Applying speeds
x += xspd
y += yspd

// Checks
onGround = place_meeting(x, y + 1, obj_Collision)