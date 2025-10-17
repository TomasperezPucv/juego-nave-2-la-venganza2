var up_key  = keyboard_check_pressed(vk_up);
var down_key = keyboard_check_pressed(vk_down);
var accept_key = keyboard_check_pressed(vk_enter);

//aca se guarda el largo de las opciones de menu actual

op_lenght = array_length(options[menu_level]);



pos += down_key -up_key;

if(pos >= op_lenght) {pos = 0;}

if(pos< 0 ){pos = op_lenght-1;}


if(accept_key){
	//activar o usar opciones
	var start_menu_level = menu_level;
	
	
	switch(menu_level){
		//pause menu
		case 0:
			switch(pos){
				//comenzar juego
				case 0:
				room_goto_next(); 
				break;
		
				//configuraciones
				case 1:
				
				menu_level =1;
				break;
	
				//salir del juego
				case 2: menu_level =3; break;
			
				case 3: game_end(); break;

			}
		break;
		
		case 1:
			switch(pos){
				case 0:
				//screen size
				
				break;
				
				case 1:
				//probar dialogos
				
				room_goto(cinematic_room);
				
				break;
				
				case 2:
				//volumen
				
				break;
				
				case 3:
				//regresar
					menu_level = 0;
				break;
			
			
			}
		break;
		
		case 3:
			switch(pos){
				case 0:
				//ir a nivel 1
				
				global.current_level =1;
				room_goto(Room1);
				break;
				
				case 1:
				//ir a nivel 2
				
				global.current_level =2
				room_goto(Room2);
				break;
				
				case 2:
				//ir a nivel 3
				
				global.current_level =3;
				break;
				
				case 3:
				//regresar
					menu_level = 0;
				break;
			
			
			}
	
	}
	
	//resetear posicion del pos
	if(start_menu_level != menu_level){ pos =0;}
	
	//aca se guarda el largo de las opciones de menu actual
	op_lenght = array_length(options[menu_level]);
}