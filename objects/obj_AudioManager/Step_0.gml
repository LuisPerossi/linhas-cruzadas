if (global.finished == 1) {
	audio_stop_all()
	audio_play_sound(sd_End, 10, true);
	global.finished = -1
}