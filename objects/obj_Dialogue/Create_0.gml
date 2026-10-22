dialogs = []
page = 0
curDialog = {}
onEnd = function() {}

add = function(_sprite, _name, _message) {
	array_push(dialogs, {
		sprite: _sprite,
		name: _name,
		message: _message
	})
	
	if (array_length(dialogs) == 1) {
        curDialog = dialogs[0];
    }
}

