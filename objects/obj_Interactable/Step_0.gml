if (!interactable) { exit }
if (!instance_exists(obj_Player)) { exit }

inRange = (distance_to_object(obj_Player) <= maxInteractDistance)

var _interact = keyboard_check_pressed(ord("E"))
var _playerGrounded = obj_Player.onGround

if (inRange && _interact && _playerGrounded) { 
	interactAction()
}