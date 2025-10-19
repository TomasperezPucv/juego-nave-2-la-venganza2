if(other.enemigo == false){
	salud--;
	audio_play_sound(snd_explision,0,false);
	with(obj_common_bullet){instance_destroy();}

}