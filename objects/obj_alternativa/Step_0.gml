y += speed_y;
if (shoot_cooldown >0) {shoot_cooldown -=1;}

if(shoot_cooldown<=0){
	disparar();
	shoot_cooldown = shoot_rate;

}


if(y+speed_y > room_height){
	instance_create_layer(x,y,"ui",obj_response_bad);
	
	with(obj_enunciado){
		global.salud--;
		instance_destroy();
	}
	
	instance_destroy();
}

