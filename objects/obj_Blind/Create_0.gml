// Inherit the parent event
event_inherited();

// Setting up the interactable class
offsetY = sprite_height

// Setting up the stage
curStage = 0
interactable = true

// Variables
xspd = 1.5
maxFollowDistance = 50

// Functions
nextStage = function() {
	interactable = false
	global.objective = -1
	curStage++
}