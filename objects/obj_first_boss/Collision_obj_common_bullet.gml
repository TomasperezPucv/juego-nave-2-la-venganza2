if(other.enemigo == false){

	with(obj_common_bullet){instance_destroy();}

	if(instance_exists(obj_preguntas_nv1)){with(obj_preguntas_nv1){jefe_destruido = true}}
	if(instance_exists(obj_preguntas_nv2)){with(obj_preguntas_nv2){jefe_destruido = true}}
	if(instance_exists(obj_preguntas_nv3)){with(obj_preguntas_nv3){jefe_destruido = true}}
	audio_play_sound(snd_explision,0,false);

	salud--;
	instance_destroy();
}