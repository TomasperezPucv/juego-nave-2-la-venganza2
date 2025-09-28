//actualmente se tiene solo una lista de prueba nomas, esperare a que el arreglo/s esten listos 

questions = ds_list_create();
//pregunta_seleccionada= noone;
current_question_index = 0;
phase = levelphase.ETAPANORMAL;
tiempo_disponible_pregunta=6; //4 segundos para responder 1 pregunta
timer_pregunta =0;
esperando_nueva_pregunta = true;




// Ejemplo: añadir 1 pregunta (usa las tuyas del documento)
var q1 = ds_map_create();
ds_map_add(q1, "text", "Si int *p = &x, Que significa p?");
var opts = ds_list_create();
ds_list_add(opts, "Dirección de x");       // index 0
ds_list_add(opts, "Valor de x");           // index 1
ds_list_add(opts, "Dirección de p");       // index 2
ds_map_add(q1, "options", opts);
ds_map_add(q1, "correct", 0); // índice correcto
ds_map_add(q1, "not_appear", false); // aca va un booleano // si es true ya se pregunto y si es false aun no se pregunta
ds_list_add(questions, q1);


var q2 = ds_map_create();
ds_map_add(q2, "text", "do you love tv???");
var opts2 = ds_list_create();
ds_list_add(opts2, "nose ingles");       // index 0
ds_list_add(opts2, "x");           // index 1
ds_list_add(opts2, "SI");       // index 2
ds_map_add(q2, "options", opts2);
ds_map_add(q2, "correct", 2); // índice correcto
ds_map_add(q2, "not_appear", false);
ds_list_add(questions, q2);


var q3 = ds_map_create();
ds_map_add(q3, "text", "chicos...");
var opts3 = ds_list_create();
ds_list_add(opts3, "estoy comiendo kk");       // index 0
ds_list_add(opts3, "estoy comiendo mortadela");           // index 1
ds_list_add(opts3, "Dirección de p");       // index 2
ds_map_add(q3, "options", opts3);
ds_map_add(q3, "correct", 1); // índice correcto
ds_map_add(q3, "not_appear", false);
ds_list_add(questions, q3);


var q4 = ds_map_create();
ds_map_add(q4, "text", "cuantos capitulos tiene DELTARUNE");
var opts4 = ds_list_create();
ds_list_add(opts4, "1");       // index 0
ds_list_add(opts4, "4");           // index 1
ds_list_add(opts4, "2");       // index 2
ds_map_add(q4, "options", opts4);
ds_map_add(q4, "correct", 1); // índice correcto
ds_map_add(q4, "not_appear", false);
ds_list_add(questions, q4);


var q5 = ds_map_create();
ds_map_add(q5, "text", "Si int *p = &x, Que significa p?");
var opts5 = ds_list_create();
ds_list_add(opts5, "Dirección de x");       // index 0
ds_list_add(opts5, "Valor de x");           // index 1
ds_list_add(opts5, "Dirección de p");       // index 2
ds_map_add(q5, "options", opts5);
ds_map_add(q5, "correct", 0); // índice correcto
ds_map_add(q5, "not_appear", false);
ds_list_add(questions, q5);


var q6 = ds_map_create();
ds_map_add(q6, "text", "im wing gaster");
var opts6 = ds_list_create();
ds_list_add(opts6, "Dirección de x");       // index 0
ds_list_add(opts6, "Valor de x");           // index 1
ds_list_add(opts6, "Dirección de p");       // index 2
ds_map_add(q6, "options", opts6);
ds_map_add(q6, "correct", 0); // índice correcto
ds_map_add(q6, "not_appear", true);
ds_list_add(questions, q6);


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