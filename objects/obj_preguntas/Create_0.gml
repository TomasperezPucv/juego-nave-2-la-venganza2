//actualmente se tiene solo una lista de prueba nomas, esperare a que el arreglo/s esten listos 

questions = ds_list_create();
//pregunta_seleccionada= noone;
current_question_index = 0;
phase = levelphase.ETAPANORMAL;
tiempo_disponible_pregunta=11; //4 segundos para responder 1 pregunta
timer_pregunta =0;
esperando_nueva_pregunta = true;

lista_nivel1();







//ESTO ERA PARA SABER SI SE  guardaban bienlos datos bdefhijo

/*var enunciado = instance_create_layer(512,5920,"ui",obj_enunciado);
enunciado.texto = ds_map_find_value(q1,"text");
var lista_de_alternativas = ds_map_find_value(q1,"options");
var alternativa_correcta = ds_map_find_value(q1,"correct");

var alternativa1 = instance_create_layer(288,5900,"Instances",obj_alternativa); 
alternativa1.option_text =ds_list_find_value(lista_de_alternativas, 0);
var alternativa2 = instance_create_layer(544,5900,"Instances",obj_alternativa);
alternativa2.option_text = ds_list_find_value(lista_de_alternativas, 1);
var alternativa3 = instance_create_layer(768,5900,"Instances",obj_alternativa);
alternativa3.option_text = ds_list_find_value(lista_de_alternativas, 2);*/