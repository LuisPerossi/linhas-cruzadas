if (!interactable) { exit }
if (!instance_exists(obj_Player)) { exit }

inRange = (distance_to_object(obj_Player) <= maxInteractDistance)

var _interact = keyboard_check_pressed(ord("E")) or keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(1)
var _playerGrounded = obj_Player.onGround

if (inRange && _interact && _playerGrounded) { 
	audio_stop_sound(snd_Interact)
	audio_play_sound(snd_Interact, 100, false)
	interactAction()
}