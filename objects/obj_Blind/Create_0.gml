// Inherit the parent event
event_inherited();

// Setting up the interactable class
offsetY = sprite_height

// Setting up the stage
curStage = 0
interactable = true

// Variables
spd = 1
xspd = 0
maxFollowDistance = 80

// Functions
nextStage = function() {
	interactable = false
	global.objective = -1
	curStage++
}