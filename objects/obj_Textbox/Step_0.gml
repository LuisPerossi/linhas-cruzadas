getControls()

curDialog = dialogs[page]

if (_confirm)
	if (page < array_length(dialogs) - 1)
		page++
	else
		instance_destroy()

/*

var _textLength = string_length(textArray[curPage])

if (_confirm) {
	if (curPage < array_length(textArray) - 1)
		curPage++
	else 
		instance_destroy()
}