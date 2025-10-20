if (is_active) {
   
    input_string = keyboard_string;

   
    if (string_length(input_string) > max_length) {
        input_string = string_copy(input_string, 1, max_length);
    }

   
    if (keyboard_check_pressed(vk_enter)) {
        is_active = false;
       
        global.playerID = input_string;
		show_debug_message("ID del Jugador Capturado: " + input_string);
       
		
		room_goto(rm_main_menu);
    }
}