questions = ds_list_create();

//pregunta_seleccionada= noone;
current_question_index = 0;
phase = global.faseactual;
tiempo_disponible_pregunta=40; //11 segundos para responder 1 pregunta
nivel_completado =false;
//ojo con esto!!!!!!!!
global.nextquestion = true;
global.respuestas_correctas = 0;
global.tiempo_para_responder = tiempo_disponible_pregunta;
timer_pregunta =0;
esperando_nueva_pregunta = true;

lista_nivel3();

//esto es solo para correr la cinematica de jefe 1 vez

terminar =false;
jefe_destruido = false;

respuestas_correctas_jefe =0;
escudo_destruido = false;






