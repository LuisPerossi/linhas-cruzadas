if (global.finished == 1) {
	audio_stop_all()
	audio_play_sound(snd_End, 10, false);
	global.finished = -1
}

