getControls()

if (!instance_exists(obj_Player)) { exit }

var _distance = distance_to_object(obj_Player)
withinRange = _distance <= pixelRange

if (instance_exists(obj_Dialogue)) {
	interactLocked = true
	exit
}

if (_interactRelease)
	interactLocked = false

if (withinRange and _interactPress and obj_Player.grounded && !interactLocked) 
	interactAction()
