
if (transicao) {
    alpha_menu -= 0.03;
    
   
    if (alpha_menu <= 0) {
        global.estado_jogo = "JOGANDO";
        instance_destroy();
    }
    exit;
}


if (global.estado_jogo == "MENU") {
    var _cima = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
    var _baixo = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));
    var _confirma = keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("Z"));
    var _cancela = keyboard_check_pressed(vk_escape) or keyboard_check_pressed(ord("X"));
    
    if (tela_atual == "PRINCIPAL") {
        if (_baixo) {
            selecao_atual += 1;
            if (selecao_atual >= array_length(opcoes)) selecao_atual = 0;
        }
        if (_cima) {
            selecao_atual -= 1;
            if (selecao_atual < 0) selecao_atual = array_length(opcoes) - 1;
        }
        
        if (_confirma) {
            switch(selecao_atual) {
                case 0: //jogar
                    transicao = true;
                    break;
                case 1: //controles
                    tela_atual = "CONTROLES"; 
                    break;
                case 2: //sair
                    game_end();
                    break;
            }
        }
    } 
    else if (tela_atual == "CONTROLES") {
        if (_confirma or _cancela) {
            tela_atual = "PRINCIPAL";
        }
    }
}