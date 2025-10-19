enum bossStates2{
	MOVING,
	ATTACK,
	REFUERZOS2,
	REFUERZOS3,
	ATAQUEFINAL
}

salud = 5;
xvel =5;
estado = bossStates2.MOVING;
border_l =192;
border_r = 830;
cantidad_de_balas =4;

altura_de_refuerzos = 64;
separacion_refuerzos = 224;

movimiento_completado =false;
jugador_en_posicion = false;
rayo_creado = false;