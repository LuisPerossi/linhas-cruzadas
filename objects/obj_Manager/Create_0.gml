window_set_size(288 * 3, 208 * 3);
window_center();
window_set_cursor(cr_none)

gpu_set_tex_filter(false);

if (!instance_exists(obj_Cursor)) {
	instance_create_layer(0, 0, "Instances", obj_Cursor)
}