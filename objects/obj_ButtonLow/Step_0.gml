if (!instance_exists(obj_TrafficManager)) { exit }

var _hover = place_meeting(x, y, obj_Cursor)
var _click = mouse_check_button_pressed(1)

if (_hover  && _click) {
	obj_TrafficManager.curFreq = 0
}