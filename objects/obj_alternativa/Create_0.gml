option_index = 0; // asignado por qmanager
shoot_cooldown = 0;
shoot_rate = 30;
option_text = "test text";
es_correcta =false;
speed_y = 2;

disparar = function(){
	var n = random(1);
	
	if(n < 0.1){
		var bala = instance_create_layer(x,y+32,"bullets",obj_common_bullet);
		bala.angulo = pi/2;
		bala.enemigo = true;
		
	}

}