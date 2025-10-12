switch(phase){
	
	case levelphase.ETAPANORMAL:
		if (global.respuestas_correctas == 10){esperando_nueva_pregunta = false;}
		if((esperando_nueva_pregunta)){
			
			timer_pregunta += delta_time;
			if((timer_pregunta >= tiempo_disponible_pregunta*1000000)||(global.nextquestion==true)){
				global.nextquestion =false;
				timer_pregunta=0;
				var pregunta_seleccionada  =  seleccionar_pregunta();
				if((pregunta_seleccionada !=noone)){
					var enunciado = instance_create_layer(room_width/2,32,"ui",obj_enunciado);
					enunciado.texto = ds_map_find_value(pregunta_seleccionada,"text");
					var lista_de_alternativas = ds_map_find_value(pregunta_seleccionada,"options");
					var alternativa_correcta = ds_map_find_value(pregunta_seleccionada,"correct");

		
					var altura_alternativa= 1;
					var pos_x = room_width/4+32*3;
					var margen = 20;
					var separacion =30;
					
					
					for (var i = 0; i < ds_list_size(lista_de_alternativas); i++) {
						    var texto = ds_list_find_value(lista_de_alternativas, i);

						    // medir ancho real del texto (con la fuente que usas en obj_alternativa)
						    draw_set_font(fnt_test);
						    var text_w = string_width(texto);
						    var ancho_boton = text_w + margen * 2;

						    // crear alternativa
						    var alternativa = instance_create_layer(pos_x, altura_alternativa, "Instances", obj_alternativa_nv2);
						    alternativa.option_text = texto;

						    // marcar la correcta
						    if (i == alternativa_correcta) {
						        alternativa.es_correcta = true;
						    }

						    // mover posición X para el siguiente
						    pos_x += ancho_boton + separacion;
					}
					/*for(var i=0; i<ds_list_size(lista_de_alternativas);i++){
						var alternativa = instance_create_layer( distanciax+separacion*i,altura_alternativa,"Instances",obj_alternativa);
						alternativa.option_text = ds_list_find_value(lista_de_alternativas, i)
						if( i == alternativa_correcta){
							alternativa.es_correcta =true;
						}
					*/
		
				}else{
					phase = levelphase.ETAPANORMAL;
					esperando_nueva_pregunta = false;
					
				}
				
				
			}
		
		}else{
			
			if(!instance_exists(obj_end_level_sequence)&&(nivel_completado == false)){
				instance_create_layer(room_width/2,room_height/2, "ui",obj_end_level_sequence);
				nivel_completado =true;
			}
			global.puntos = -999999
			
		}
		
		break;
		
	case levelphase.ETAPAJEFE:
	
		break;
		

}