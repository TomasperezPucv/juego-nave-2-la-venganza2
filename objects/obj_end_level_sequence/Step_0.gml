if(layer_sequence_is_finished(potato)){
	if(instance_exists(obj_preguntas_nv1)){
		with(obj_preguntas_nv1){
			terminar =true;
		}
	}
	if(instance_exists(obj_preguntas_nv2)){
		with(obj_preguntas_nv2){
			terminar =true;
		}
	}
	
	 instance_destroy();
}