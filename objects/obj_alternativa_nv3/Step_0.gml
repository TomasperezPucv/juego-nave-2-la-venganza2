if(rectangle_colissions(x,y+speed_y,width,heigh, obj_player_shield)||(y+speed_y<=0)||place_meeting(x,y+speed_y,obj_boss_shield)){
	speed_y*=-1;
}

if((x+speed_x <= border_l)||(x+speed_x+width>= border_r)){
	speed_x *=-1;
}

x+=speed_x;
y+=speed_y;



if (shoot_cooldown >0) {shoot_cooldown -=1;}

if(shoot_cooldown<=0){
	if(global.faseactual == levelphase.ETAPANORMAL){
		disparar();
	}
	shoot_cooldown = shoot_rate;

}

with(obj_common_bullet){
	if(enemigo == false){
		var new_width = string_width(other.option_text)*other.scale;
		var line_height = string_height(other.option_text)*other.scale;
		width = (new_width + other.border*2*other.scale);
		heigh = (line_height + other.border*2*other.scale);
		
		if(point_in_rectangle(x,y,other.x,other.y,other.x+width,other.y+heigh)){
			if(other.es_correcta){
				with(obj_preguntas_nv3){
					if(global.faseactual == levelphase.ETAPAJEFE){
						respuestas_correctas_jefe ++;
					}
				}
			}
			other.destruccion();
		}
	}
}


