switch(estado){
	case bossStates3.TOPOSITION:
	
		if(!movimiento_completado){
			var target_x = border_l;
			var target_y =0;
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
			
			if (abs(x - target_x) < 2 && abs(y - target_y) < 2) {
	            movimiento_completado = true;
	        }
		}
		if(movimiento_completado){
			estado = bossStates3.STILL;
		}
	break;
	
	case bossStates3.STILL:
		var un_random = irandom(500);
		if (un_random <5) { 
			//estado = choose(bossStates2.ATTACK,bossStates2.REFUERZOS3);
			estado = bossStates3.ATTACK;
        }
		if(salud<10){
			estado = bossStates3.PANIK;
		}
	break;
	
	case bossStates3.ATTACK:
		var espaciado = sprite_width/5;
		for(var b=0; b<=cantidad_de_balas-1;b++){
			var bala = instance_create_layer(x+espaciado*b,y+10,"bullets",obj_common_bullet);
			bala.enemigo = true;
		
		}
		estado = bossStates3.STILL;
	break;
	
	case bossStates3.PANIK:
		var cantidad = choose(2,3,4);
		var puntoinicial = 0
		var separacion =0;
		switch (cantidad){
			case 2:
			separacion = 256;
			puntoinicial = 64;
			break;
			
			case 3:
			separacion = 224;
			puntoinicial = 64;
			break;
			
			case 4:
			separacion = 160;
			puntoinicial = 64;
			break;
		
		}
		var otro_random = irandom(500);
		if (otro_random <3) {
			for(var e =1 ; e<=cantidad; e++){
				var enemy = instance_create_layer(puntoinicial+separacion*e ,0-sprite_height,"bullets",obj_enemy);
				enemy.yvel =10;
			}
		} 
	break;
}

if(salud <= 0){
	if(instance_exists(obj_preguntas_nv1)){with(obj_preguntas_nv1){jefe_destruido = true}}
	if(instance_exists(obj_preguntas_nv2)){with(obj_preguntas_nv2){jefe_destruido = true}}
	if(instance_exists(obj_preguntas_nv3)){with(obj_preguntas_nv3){jefe_destruido = true}}
	audio_play_sound(snd_explision,0,false);
	instance_destroy();
}