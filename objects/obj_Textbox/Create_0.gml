dialogs = []
page = 0
curDialog = {}

add = function(_sprite, _name, _message) {
	array_push(dialogs, {
		sprite: _sprite,
		name: _name,
		message: _message
	})
}

/*

textArray = []
curPage = 0

box_width = room_width - 50
box_height = 120
box_x = (room_width - box_width) / 2
box_y = room_height - box_height - 20