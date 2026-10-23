if (!instance_exists(obj_TrafficManager)) { exit }

var _num = obj_TrafficManager.curFreq

if (_num == 0) 
	obj_CurrentFreq.sprite_index = spr_Low
	
if (_num == 1) 
	obj_CurrentFreq.sprite_index = spr_Med
	
if (_num == 2) 
	obj_CurrentFreq.sprite_index = spr_High
	