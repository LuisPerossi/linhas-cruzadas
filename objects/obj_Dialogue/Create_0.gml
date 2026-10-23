dialogues = []
index = 0

after = function() {}

add = function(_sprite, _name, _message) {
	array_push(dialogues, {
		sprite: _sprite,
		name: _name,
		message: _message
	})
}