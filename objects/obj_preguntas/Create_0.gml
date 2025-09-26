questions = ds_list_create();
current_q = noone ;
current_question_index = 0;

// Ejemplo: añadir 1 pregunta (usa las tuyas del documento)
var q = ds_map_create();
ds_map_add(q, "text", "Si int *p = &x, Que significa p?");
var opts = ds_list_create();
ds_list_add(opts, "Dirección de x");       // index 0
ds_list_add(opts, "Valor de x");           // index 1
ds_list_add(opts, "Dirección de p");       // index 2
ds_map_add(q, "options", opts);
ds_map_add(q, "correct", 0); // índice correcto
ds_list_add(questions, q);


var enunciado = instance_create_layer(512,5920,"ui",obj_enunciado);
enunciado.texto = ds_map_find_value(q,"text");
var lista_de_alternativas = ds_map_find_value(q,"options");
var alternativa_correcta = ds_map_find_value(q,"correct");

var alternativa1 = instance_create_layer(288,5900,"Instances",obj_alternativa); 
alternativa1.option_text =ds_list_find_value(lista_de_alternativas, 0);
var alternativa2 = instance_create_layer(544,5900,"Instances",obj_alternativa);
alternativa2.option_text = ds_list_find_value(lista_de_alternativas, 1);
var alternativa3 = instance_create_layer(768,5900,"Instances",obj_alternativa);
alternativa3.option_text = ds_list_find_value(lista_de_alternativas, 2);