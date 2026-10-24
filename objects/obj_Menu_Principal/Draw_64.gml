//GUI

if (alpha_menu <= 0) exit;

draw_set_font(font_Press2P);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var _largura = display_get_gui_width();
var _altura = display_get_gui_height();
var _meio_x = _largura / 2;
var _meio_y = _altura / 2;


draw_set_alpha(0.6 * alpha_menu);
draw_set_color(c_black);
draw_rectangle(0, 0, _largura, _altura, false);

draw_set_alpha(alpha_menu);

if (tela_atual == "PRINCIPAL") {
    

    var _pos_y_titulo = _altura * 0.22;
    draw_set_color(c_white);
    //draw_text(round(_meio_x), round(_pos_y_titulo), "LINHAS CRUZADAS"); 
	draw_sprite(spr_Logo, -1, round(_meio_x), round(_pos_y_titulo))
 
    for (var i = 0; i < array_length(opcoes); i++) {
        var _cor = c_white;
        var _texto = opcoes[i];
        
        if (i == selecao_atual) {
            _cor = c_yellow;
            _texto = "> " + _texto + " <"; 
        }
        
        draw_set_color(_cor);
        draw_text(round(_meio_x), round(_meio_y + (i * espacamento)), _texto);
    }
    
} else if (tela_atual == "CONTROLES") {
    
    draw_set_color(c_yellow);
    draw_text(round(_meio_x), round(_meio_y - 40), "CONTROLES");
    
    draw_set_color(c_white);
    draw_text(round(_meio_x), round(_meio_y - 10), "SETAS/WASD - Movimento");
    draw_text(round(_meio_x), round(_meio_y + 15), "E/ENTER/MOUSE1 - Interagir");
    
    draw_set_color(c_gray);
    draw_text(round(_meio_x), round(_altura - 30), "Pressione E para voltar");
}

draw_set_alpha(1.0);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);