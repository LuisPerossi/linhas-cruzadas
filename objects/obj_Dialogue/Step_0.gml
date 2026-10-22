getControls()

curDialog = dialogs[page]

if (_confirm)
	if (page < array_length(dialogs) - 1)
		page++
	else
		instance_destroy()
