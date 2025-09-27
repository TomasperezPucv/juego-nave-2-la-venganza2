var tecla_izquierda = keyboard_check(vk_left);
var tecla_derecha = keyboard_check(vk_right);

var xvel = (tecla_derecha -tecla_izquierda)*velocidad;

if(place_meeting(x+xvel,y,obj_wall)){
	xvel =0;
}

x+=xvel;

if (disparo_cooldown >0) {disparo_cooldown -=1;}

if(keyboard_check(vk_space)&&disparo_cooldown<=0){
	//aca se crea la balita
	instance_create_layer(x+28,y-20, "bullets", obj_common_bullet);
	disparo_cooldown = disparo_rate;

}

//aca el testeo de perdida de vidas
if(keyboard_check_pressed((ord("J")))){
	global.salud --;
	salud = global.salud
}
