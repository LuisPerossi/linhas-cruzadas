var cam = view_camera[0];

if (cam == -1) exit;

var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);

for (var i = 0; i < array_length(layers); i++) {
    var _layer = layers[i];

    layer_x(
        _layer.name,
        -cam_x * _layer.speed
    );

    layer_y(
        _layer.name,
        cam_y
    );
}