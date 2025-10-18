switch(estado){
	case bossStates.STILL:
		if (irandom(100) < 2) { // 2% de probabilidad por frame (~1 vez cada 50 frames)
            estado = bossStates.MOVING;
            timer_movimiento = 0;

            // Dirección aleatoria: -1 o 1
            direccion = choose(-1, 1);
        }
	break;
	
	case bossStates.MOVING:
		x += xvel * direccion;
        timer_movimiento++;

        if (timer_movimiento >= tiempo_de_movimiento) {
            estado = bossStates.STILL;
            direccion = 0;
        }
    break;
		

}

if(salud <= 0){
	instance_destroy();
}