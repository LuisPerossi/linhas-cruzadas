
if (!iniciando_jogo) {
    var seta_cima = keyboard_check_pressed(vk_up);
    var seta_baixo = keyboard_check_pressed(vk_down);
    var tecla_confirma = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space);
    
    if (seta_baixo) {
        index_selec++;
        if (index_selec >= array_length(opcoes)) index_selec = 0;
    }
    if (seta_cima) {
        index_selec--;
        if (index_selec < 0) index_selec = array_length(opcoes) - 1;
    }
   
    

    if (tecla_confirma) {
        if (index_selec == 0) { 
            iniciando_jogo = true; 
         
        }
        else if (index_selec == 2) {
            game_end();
        }
    }
} else {
   
    alpha_menu -= 0.05;
    
    if (alpha_menu <= 0) {
        global.estado_jogo = "JOGANDO";
        instance_destroy();
    }
}