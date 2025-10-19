if (is_active) {
    // keyboard_string captura la entrada de texto global, incluyendo retroceso.
    input_string = keyboard_string;

    // Limitar la longitud de la cadena para evitar desbordamientos.
    if (string_length(input_string) > max_length) {
        input_string = string_copy(input_string, 1, max_length);
    }

    // Comprobar si el jugador ha pulsado ENTER para finalizar la entrada
    if (keyboard_check_pressed(vk_enter)) {
        is_active = false;
        // Guardar el ID (aquí iría la lógica de persistencia, por ejemplo, guardarlo en un objeto de control)
        global.playerID = input_string;
		show_debug_message("ID del Jugador Capturado: " + input_string);
        // Podrías pasar a la siguiente Room o destruir este objeto.
		
		room_goto(rm_main_menu);
    }
}