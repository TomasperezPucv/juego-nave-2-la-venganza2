
if(enemigo){
	
	y+= velocidad;
	sprite_index = sprites[Bullet_source.ENEMY];
}else{
	y-= velocidad;
	sprite_index = sprites[Bullet_source.PLAYER];
}

// Obtener el límite superior de la cámara (posición Y de la vista)
var vista_top = camera_get_view_y(0);

// Destruir si la bala se fue por encima del borde de la vista
if (y + sprite_height < vista_top) {
    instance_destroy();
}

