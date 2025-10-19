enum bossStates3{
	TOPOSITION,
	ATTACK,
	ATAQUEFINAL,
	STILL,
	PANIK
}



salud = 10;
estado = bossStates3.TOPOSITION;
border_l =192;
border_r = 830;
cantidad_de_balas = 6;
x= border_l;
y= -160;

movimiento_completado =false;
jugador_en_posicion = false;
rayo_creado = false;