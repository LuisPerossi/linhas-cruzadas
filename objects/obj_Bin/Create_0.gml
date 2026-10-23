// Inherit the parent event
event_inherited();

// Setup interactable class
offsetX = sprite_width / 2
interactable = false

interactAction = function() {
	interactable = false
	global.objective = -1
	if (instance_exists(obj_Blind)) { obj_Blind.nextStage() }
	room_goto(rm_MinigameBridge)
}