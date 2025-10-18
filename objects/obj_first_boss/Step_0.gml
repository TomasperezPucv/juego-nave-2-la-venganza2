switch(estado){
	case bossStates1.STILL:
		if (irandom(100) < 2) { // 2% de probabilidad por frame (~1 vez cada 50 frames)
            estado = bossStates1.MOVING;
            timer_movimiento = 0;

            // Dirección aleatoria: -1 o 1
            direccion = choose(-1, 1);
        }
		
		if (irandom(100) < 1) { // 2% de probabilidad por frame (~1 vez cada 50 frames)
            estado = bossStates1.ATTACK;
            
        }
	break;
	
	case bossStates1.MOVING:
    // Calcula la nueva posición X
	    var nueva_x = x + xvel * direccion;
    
	    // Limita la posición X en el borde izquierdo y derecho
	    if (nueva_x < border_l) {
	        x = border_l;  // Limita a la posición mínima
	    }
	    else if (nueva_x > border_r) {
	        x = border_r-sprite_width;  // Limita a la posición máxima
	    } else {
	        x = nueva_x;   // Si no ha alcanzado el límite, mueve normalmente
	    }
    
	    timer_movimiento++;
    
	    if (timer_movimiento >= tiempo_de_movimiento) {
	        estado = bossStates1.STILL;
	        direccion = 0;
	    }
	break;
	
	case bossStates1.ATTACK:
		for(var b=0; b<=cantidad_de_balas-1;b++){
			var bala = instance_create_layer(x+b*sprite_width,y+10,"bullets",obj_common_bullet);
			bala.enemigo = true;
		
		}
		estado = bossStates1.STILL;
	
	break
		

}

if(salud <= 0){
	instance_destroy();
}