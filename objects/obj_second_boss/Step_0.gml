switch(estado){
	case bossStates2.MOVING:
		if(x+xvel<border_l||x+xvel+sprite_width>border_r){
			xvel *=-1;
		}
		x+=xvel;
		
		if (irandom(100) < 1) { 
			//estado = choose(bossStates2.ATTACK,bossStates2.REFUERZOS3);
			estado = bossStates2.ATTACK;
        }
		
		
	break;
	
	case bossStates2.ATTACK:
		var espaciado = sprite_width/4;
		for(var b=0; b<=cantidad_de_balas-1;b++){
			var bala = instance_create_layer(x+espaciado*b,y+10,"bullets",obj_common_bullet);
			bala.enemigo = true;
		
		}
		estado = bossStates2.MOVING;
	break;
	
	
	/*case bossStates2.REFUERZOS3:
		var cantidad = 3;
		for(var e =0 ; e<cantidad-1; e++){
			var enemy = instance_create_layer(x+separacion_refuerzos*e,altura_de_refuerzos,"bullets",obj_enemy);
		}
		estado = bossStates2.MOVING;
	break;*/
	
	case bossStates2.ATAQUEFINAL:
		if(!movimiento_completado){
			var target_x = room_width/2;
			var target_y = 64;
			if (abs(x - target_x) > 1) {
	            x = lerp(x, target_x, 0.1);
	        } else {
	            x = target_x;
	        }
			if (abs(y - target_y) > 1) {
	            y = lerp(y, target_y, 0.1);
	        } else {
	            y = target_y;
	        }
        
	        // Verificar si llegó a la posición
	        if (abs(x - target_x) < 2 && abs(y - target_y) < 2) {
	            movimiento_completado = true;
	        }
		}
		
		if(movimiento_completado && !jugador_en_posicion){
			if(instance_exists(obj_player)){
				var player_target_x = room_width/2;
					if (abs(obj_player.x - player_target_x) > 1) {
					obj_player.can_move =false;
	                obj_player.x = lerp(obj_player.x, player_target_x, 0.1);
	            } else {
	                obj_player.x = player_target_x;
	                jugador_en_posicion = true;
	            }
			} else {
	            // Si no existe el jugador, continuar igual
	            jugador_en_posicion = true;
	        }
		}
		
		if(movimiento_completado && jugador_en_posicion && !rayo_creado){
			instance_create_layer(x,y+sprite_width,"bullets", obj_rayo_final);
			rayo_creado = true;
		}
	
	break

}


if(salud <= 0){
	if(instance_exists(obj_preguntas_nv1)){with(obj_preguntas_nv1){jefe_destruido = true}}
	if(instance_exists(obj_preguntas_nv2)){with(obj_preguntas_nv2){jefe_destruido = true}}
	if(instance_exists(obj_preguntas_nv3)){with(obj_preguntas_nv3){jefe_destruido = true}}
	audio_play_sound(snd_explision,0,false);
	instance_destroy();
}
/**/
if(global.tiempo_para_responder <=0){
	estado = bossStates2.ATAQUEFINAL;
}