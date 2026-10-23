if (!instance_exists(obj_Cursor)) { exit }

var _hover = place_meeting(x, y, obj_Cursor)

if (_hover)
	image_index = 1
else
	image_index =0