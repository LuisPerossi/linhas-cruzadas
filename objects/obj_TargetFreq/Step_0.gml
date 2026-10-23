if (!instance_exists(obj_TrafficManager)) { exit }

var _num = obj_TrafficManager.freqs[obj_TrafficManager.index]
	
if (_num == 0) 
	obj_TargetFreq.sprite_index = spr_Low
	
if (_num == 1) 
	obj_TargetFreq.sprite_index = spr_Med
	
if (_num == 2) 
	obj_TargetFreq.sprite_index = spr_High
	