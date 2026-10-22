getControls()

curDialog = dialogs[page]

if (_interactPress) {
	if (page < array_length(dialogs) - 1)
		page++
	else {
		onEnd()
		instance_destroy()
	}
}