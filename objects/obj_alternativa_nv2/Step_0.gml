y += speed_y;
if (shoot_cooldown >0) {shoot_cooldown -=1;}

if(shoot_cooldown<=0){
	disparar();
	shoot_cooldown = shoot_rate;

}

with(obj_common_bullet){
	if(enemigo == false){
		var new_width = string_width(other.option_text)*other.scale;
		var line_height = string_height(other.option_text)*other.scale;
		width = (new_width + other.border*2*other.scale);
		heigh = (line_height + other.border*2*other.scale);
		
		if(point_in_rectangle(x,y,other.x,other.y,other.x+width,other.y+heigh)){
			other.destruccion();
		}
	}
}

if(y+speed_y > room_height){
	instance_create_layer(x,y,"ui",obj_response_bad);
	
	with(obj_enunciado){
		global.salud--;
		instance_destroy();
	}
	
	instance_destroy();
}

