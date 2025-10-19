var _meduelelacabeza =false;
switch(global.faseactual){
	
	case levelphase.ETAPANORMAL:
		if (global.respuestas_correctas == 10){esperando_nueva_pregunta = false;}
		if((esperando_nueva_pregunta)){
			
			timer_pregunta += delta_time;
			if(((timer_pregunta >= tiempo_disponible_pregunta*1000000)||(global.nextquestion==true))){
				global.nextquestion =false;
				timer_pregunta=0;
				var pregunta_seleccionada  = seleccionar_pregunta();
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
						    var alternativa = instance_create_layer(pos_x, altura_alternativa, "Instances", obj_alternativa_nv1);
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
			var _mensaje_final = noone;
			
			if(!instance_exists(obj_end_level_sequence)&&(nivel_completado == false)){
				_mensaje_final = instance_create_layer(room_width/2,room_height/2, "ui",obj_end_level_sequence);
				nivel_completado = true;
			}
			
			
			
			if(terminar == true&&_meduelelacabeza==false){
				_meduelelacabeza = true;
				global.faseactual = levelphase.ETAPAJEFE;
				/*phase = global.faseactual;
				if(global.cinematicaprejefe == false){
					global.cinematicaprejefe = true;
					//transicionar_a_nivel(3);
					
				}*/
			}
			terminar = false;
			nivel_completado =false;
			
		}
		
		break;
		
	case levelphase.ETAPAJEFE:
		//loguear que paso ajefe
		
		ds_list_clear(questions);
		preguntas_jefe1();
		if(instance_exists(obj_boss_shield)==false&&escudo_destruido ==false){
			 var escudo = instance_create_layer(x,y,"just_lateral",obj_boss_shield)
		}
		
		
		if(!instance_exists(obj_first_boss)&&jefe_destruido==false){
			var jefe = instance_create_layer(room_width/2,66, "Instances",obj_first_boss)
			log_event("Paso al primer jefe",1,global.puntos);
				if(!audio_is_playing(snd_firs_boss_music)){
					audio_play_sound(snd_firs_boss_music,1,true);
			}
		}
		esperando_nueva_pregunta =true;
		//*--*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
		
		if((esperando_nueva_pregunta)&&(escudo_destruido==false)){
			
			timer_pregunta += delta_time;
			if(((timer_pregunta >= tiempo_disponible_pregunta*1000000)||(global.nextquestion==true))){
				global.nextquestion =false;
				timer_pregunta=0;
				var pregunta_seleccionada  = seleccionar_pregunta();
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
						    var alternativa = instance_create_layer(pos_x, altura_alternativa, "Instances", obj_alternativa_nv1);
						    alternativa.option_text = texto;

						    // marcar la correcta
						    if (i == alternativa_correcta) {
						        alternativa.es_correcta = true;
						    }

						    // mover posición X para el siguiente
						    pos_x += ancho_boton + separacion;
					}
				
		
				}else{esperando_nueva_pregunta = false;}
			}}
		
		//*-*-*-*-*-*-*-*-*-*--*-*-**-*--*-*-*-
		
		if(respuestas_seguidas_jefe1 >=3){
			
			escudo_destruido =true;
			with(obj_enunciado){instance_destroy();}
			with(obj_alternativa_nv1){instance_destroy();}
			
			var enunciado = instance_create_layer(room_width/2,32,"ui",obj_enunciado);
			enunciado.texto = "Dale el ultimo golpe!!!";
		}
		if(jefe_destruido){
			if(!instance_exists(obj_end_level_sequence)&&(nivel_completado == false)){
				var _mensaje_final = instance_create_layer(room_width/2,room_height/2, "ui",obj_end_level_sequence);
				nivel_completado = true;
				
			}
		}
		
		//aca es cuando destruyes al jefe y psasas a la cinematica al siguiente nivel
		if(terminar==true&&jefe_destruido==true){
			/*ojo*/global.current_level = 2;
			global.faseactual = levelphase.ETAPANORMAL;
			log_event("Paso a la segunda etapa",2,global.puntos);
			room_goto_next();
		}
		break;
		

}