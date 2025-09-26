switch(phase){
	
	case levelphase.ETAPANORMAL:
		
		if(esperando_nueva_pregunta){
			timer_pregunta += delta_time;
			if(timer_pregunta >= tiempo_disponible_pregunta*1000000){
				timer_pregunta=0;
				var pregunta_seleccionada  = seleccionar_pregunta();
				if(pregunta_seleccionada !=noone){
					var enunciado = instance_create_layer(256,0,"ui",obj_enunciado);
					enunciado.texto = ds_map_find_value(pregunta_seleccionada,"text");
					var lista_de_alternativas = ds_map_find_value(pregunta_seleccionada,"options");
					var alternativa_correcta = ds_map_find_value(pregunta_seleccionada,"correct");

		
					var altura_alternativa= 1;
					var distanciax = 200;
					var separacion = 100;
		
					for(var i=0; i<ds_list_size(lista_de_alternativas);i++){
						var alternativa = instance_create_layer( distanciax+separacion*i,altura_alternativa,"Instances",obj_alternativa);
						alternativa.option_text = ds_list_find_value(lista_de_alternativas, i)
						if( i == alternativa_correcta){
							alternativa.es_correcta =true;
						}
					}
		
				}else{
					phase = levelphase.ETAPANORMAL;
					esperando_nueva_pregunta = false;
				}
				
				
			}
		
		}
		
		break;
		
	case levelphase.ETAPAJEFE:
	
		break;
		

}