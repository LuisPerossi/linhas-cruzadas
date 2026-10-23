if (!instance_exists(obj_TargetFreq)) { exit }
if (!instance_exists(obj_CurrentFreq)) { exit }

if (curFreq == freqs[index]) {
	if (index < array_length(freqs) - 1) { index++ }
	else { room_goto(rm_Stage) }
}