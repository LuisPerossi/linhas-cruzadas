// Inherit the parent event
event_inherited();

image_alpha = 0

interactable = true
interactAction = function() {
	interactable = false
	global.objective = -1
	if (instance_exists(obj_Blind)) { obj_Blind.nextStage() }
	room_goto(rm_MinigameGate)
}