if (instance_exists(obj_Menu_Principal)) { exit }

if (global.objective != -1) {
	var _padding = 10
	
	draw_set_font(font_Press2P)
	draw_set_color(c_black)
	draw_text(_padding, _padding, "*" + " " + string(global.objective))
}