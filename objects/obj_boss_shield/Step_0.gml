if(instance_exists(obj_preguntas_nv1)){
	with(obj_preguntas_nv1){
		if(escudo_destruido){
			other.destruir =true;
		}
	}
}
if(instance_exists(obj_preguntas_nv2)){
	with(obj_preguntas_nv2){
		if(escudo_destruido){
			other.destruir =true;
		}
	}
}
/*if(instance_exists(obj_preguntas_nv3)){
	with(obj_preguntas_nv3){
		if(escudo_destruido){
			other.destruir =true;
		}
	}
}*/

if(destruir){
	instance_destroy();
}