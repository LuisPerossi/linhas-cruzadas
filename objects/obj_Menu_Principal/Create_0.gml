// CREATE

opcoes = ["JOGAR", "CONTROLES", "SAIR"];
selecao_atual = 0;
espacamento = 35; 

tela_atual = "PRINCIPAL";
transicao = false; 
alpha_menu = 1.0; 

var _cam = view_camera[0];
var _w = camera_get_view_width(_cam);
var _h = camera_get_view_height(_cam);

if (_w <= 0 or _h <= 0) {
    _w = surface_get_width(application_surface);
    _h = surface_get_height(application_surface);
}


display_set_gui_size(_w, _h);