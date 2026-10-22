// Basic setup
depth = -9999
draw_set_font(font_Press2P)

// Variables setup
var _padding = 3
var _box_width = room_width - (_padding * 2)
var _box_x = (room_width - _box_width) / 2

var _box_height = 80
var _box_y = room_height - _box_height - _padding

// Drawing the textbox
draw_set_colour(c_black)
draw_rectangle(_box_x, _box_y, _box_x + _box_width, _box_y + _box_height, false)

// Drawing the textbox outline
draw_set_color(c_white)
draw_rectangle(_box_x + 1, _box_y + 1, _box_x + _box_width, _box_y + _box_height, true)

// Draws the character sprite (if exists)
if (curDialog.sprite != -1)
	draw_sprite(curDialog.sprite, -1, _box_x + _padding, _box_y + _padding)

// Drawing the character name
var _sprite_width = sprite_get_width(curDialog.sprite)
var _text_x = _box_x + _sprite_width + (_padding * 2)
var _text_y = _box_y + _padding
var _text_width = _box_width - _sprite_width - (_padding * 2)
var _height = string_height(curDialog.name) + _padding

draw_set_colour(c_gray)
draw_text_ext(_text_x, _text_y, curDialog.name, _height, _text_width)

// Drawing the character message
draw_set_colour(c_white)
draw_text_ext(_text_x, _text_y + _height, curDialog.message, _height, _text_width)