draw_set_font(font_Press2P); 
draw_set_alpha(alpha_menu);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

var pos_x = 40; 
var pos_y = 100;

for (var i = 0; i < array_length(opcoes); i++) {
    var cor = c_white;
    var y_atual = pos_y + (i * espacamento);
    
   
    if (i == index_selec) {
        cor = c_yellow;

        draw_sprite_ext(spr_cursor, 0, pos_x - 16, y_atual, 1, 1, 0, c_white, alpha_menu);
    }
    

    draw_set_color(c_black);
    draw_text(pos_x + 1, y_atual + 1, opcoes[i]);
    

    draw_set_color(cor);
    draw_text(pos_x, y_atual, opcoes[i]);
}


draw_set_alpha(1);
draw_set_color(c_white);