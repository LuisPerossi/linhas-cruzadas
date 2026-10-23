if (array_length(dialogues) == 0) { exit } 

// Getting the current dialogue
var _curDialogue = dialogues[index]

// Basic setup
depth = -9999
draw_set_font(font_Press2P)

// Setup vars
var _padding = 3

// Get the active camera's visible area
var _camera = view_camera[0];

var _view_x = camera_get_view_x(_camera);
var _view_y = camera_get_view_y(_camera);
var _view_width = camera_get_view_width(_camera);
var _view_height = camera_get_view_height(_camera);

// Calculate textbox dimensions and position
var _box_width = _view_width - (_padding * 2);
var _box_x = _view_x + _padding;

var _box_height = 80;
var _box_y = _view_y + _view_height - _box_height - _padding;

// Drawing the textbox
draw_set_colour(c_black)
draw_rectangle(_box_x, _box_y, _box_x + _box_width, _box_y + _box_height, false)

// Drawing the textbox outline
draw_set_color(c_white)
draw_rectangle(_box_x + 1, _box_y + 1, _box_x + _box_width, _box_y + _box_height, true)

// Draws the character sprite (if exists)
if (_curDialogue.sprite != -1)
	draw_sprite(_curDialogue.sprite, -1, _box_x + _padding, _box_y + _padding)

// Drawing the character name
var _sprite_width = sprite_get_width(_curDialogue.sprite)
var _text_x = _box_x + _sprite_width + (_padding * 2)
var _text_y = _box_y + _padding
var _text_width = _box_width - _sprite_width - (_padding * 2)
var _height = string_height(_curDialogue.name) + _padding

draw_set_colour(c_gray)
draw_text_ext(_text_x, _text_y, _curDialogue.name, _height, _text_width)

// Drawing the character message
draw_set_colour(c_white)
draw_text_ext(_text_x, _text_y + _height, _curDialogue.message, _height, _text_width)