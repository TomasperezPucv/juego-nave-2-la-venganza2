//aca va la logica relacionada con llenar las preguntas 
//una funcion para los niveles y otra para los jefes xd
function lista_nivel1(){
	
	//PREGUNTAS NIVEL 1

	// Pregunta 1
	var q1 = ds_map_create();
	ds_map_add(q1, "text", "¿Qué operador obtiene el valor apuntado por un puntero?");
	var opts1 = ds_list_create();
	ds_list_add(opts1, "&");
	ds_list_add(opts1, "*");          // correcta
	ds_list_add(opts1, "p");
	ds_list_add(opts1, "x");
	ds_map_add(q1, "options", opts1);
	ds_map_add(q1, "correct", 1);
	ds_map_add(q1, "not_appear", false);
	ds_list_add(questions, q1);

	// Pregunta 2
	var q2 = ds_map_create();
	ds_map_add(q2, "text", "¿Qué operador obtiene la dirección de una variable?");
	var opts2 = ds_list_create();
	ds_list_add(opts2, "&");           // correcta
	ds_list_add(opts2, "*");
	ds_list_add(opts2, "x");
	ds_list_add(opts2, "p");
	ds_map_add(q2, "options", opts2);
	ds_map_add(q2, "correct", 0);
	ds_map_add(q2, "not_appear", false);
	ds_list_add(questions, q2);

	// Pregunta 3
	var q3 = ds_map_create();
	ds_map_add(q3, "text", "¿Qué devuelve *(&x)?");
	var opts3 = ds_list_create();
	ds_list_add(opts3, "*x");
	ds_list_add(opts3, "x");           // correcta
	ds_list_add(opts3, "&x");
	ds_list_add(opts3, "p");
	ds_map_add(q3, "options", opts3);
	ds_map_add(q3, "correct", 1);
	ds_map_add(q3, "not_appear", false);
	ds_list_add(questions, q3);

	// Pregunta 4
	var q4 = ds_map_create();
	ds_map_add(q4, "text", "¿Qué representa *&x si x = 10?");
	var opts4 = ds_list_create();
	ds_list_add(opts4, "x");           // correcta
	ds_list_add(opts4, "&x");
	ds_list_add(opts4, "*p");
	ds_list_add(opts4, "10");
	ds_map_add(q4, "options", opts4);
	ds_map_add(q4, "correct", 0);
	ds_map_add(q4, "not_appear", false);
	ds_list_add(questions, q4);

	// Pregunta 5
	var q5 = ds_map_create();
	ds_map_add(q5, "text", "Si int *p = &x ¿qué tipo de valor contiene p?");
	var opts5 = ds_list_create();
	ds_list_add(opts5, "Valor");
	ds_list_add(opts5, "Dirección");    // correcta
	ds_list_add(opts5, "Null");
	ds_list_add(opts5, "x");
	ds_map_add(q5, "options", opts5);
	ds_map_add(q5, "correct", 1);
	ds_map_add(q5, "not_appear", false);
	ds_list_add(questions, q5);

	// Pregunta 6
	var q6 = ds_map_create();
	ds_map_add(q6, "text", "¿A qué equivale &(*p) si p = &x?");
	var opts6 = ds_list_create();
	ds_list_add(opts6, "&x");          // correcta
	ds_list_add(opts6, "*x");
	ds_list_add(opts6, "p");
	ds_list_add(opts6, "x");
	ds_map_add(q6, "options", opts6);
	ds_map_add(q6, "correct", 0);
	ds_map_add(q6, "not_appear", false);
	ds_list_add(questions, q6);

	// Pregunta 7
	var q7 = ds_map_create();
	ds_map_add(q7, "text", "¿A qué es equivalente &(*p)?");
	var opts7 = ds_list_create();
	ds_list_add(opts7, "x");
	ds_list_add(opts7, "*x");
	ds_list_add(opts7, "&x");
	ds_list_add(opts7, "p");           // correcta
	ds_map_add(q7, "options", opts7);
	ds_map_add(q7, "correct", 3);
	ds_map_add(q7, "not_appear", false);
	ds_list_add(questions, q7);

	// Pregunta 8
	var q8 = ds_map_create();
	ds_map_add(q8, "text", "¿Dos punteros pueden apuntar a lo mismo?");
	var opts8 = ds_list_create();
	ds_list_add(opts8, "No");
	ds_list_add(opts8, "Sí");           // correcta
	ds_list_add(opts8, "Null");
	ds_list_add(opts8, "Error");
	ds_map_add(q8, "options", opts8);
	ds_map_add(q8, "correct", 1);
	ds_map_add(q8, "not_appear", false);
	ds_list_add(questions, q8);

	// Pregunta 9
	var q9 = ds_map_create();
	ds_map_add(q9, "text", "Si int *p = &x;, ¿qué representa **&p?");
	var opts9 = ds_list_create();
	ds_list_add(opts9, "p");
	ds_list_add(opts9, "*p");           // correcta
	ds_list_add(opts9, "x");
	ds_list_add(opts9, "&x");
	ds_map_add(q9, "options", opts9);
	ds_map_add(q9, "correct", 1);
	ds_map_add(q9, "not_appear", false);
	ds_list_add(questions, q9);

	// Pregunta 10
	var q10 = ds_map_create();
	ds_map_add(q10, "text", "¿Cuál es el valor inicial de un puntero sin asignar?");
	var opts10 = ds_list_create();
	ds_list_add(opts10, "Basura");      // correcta
	ds_list_add(opts10, "0");
	ds_list_add(opts10, "NULL");
	ds_list_add(opts10, "&x");
	ds_map_add(q10, "options", opts10);
	ds_map_add(q10, "correct", 0);
	ds_map_add(q10, "not_appear", false);
	ds_list_add(questions, q10);

	// Pregunta 11
	var q11 = ds_map_create();
	ds_map_add(q11, "text", "&x + 0 apunta a?");
	var opts11 = ds_list_create();
	ds_list_add(opts11, "x");
	ds_list_add(opts11, "&x");          // correcta
	ds_list_add(opts11, "NULL");
	ds_list_add(opts11, "Basura");
	ds_map_add(q11, "options", opts11);
	ds_map_add(q11, "correct", 1);
	ds_map_add(q11, "not_appear", false);
	ds_list_add(questions, q11);

	// Pregunta 12
	var q12 = ds_map_create();
	ds_map_add(q12, "text", "¿Qué pasa si haces *p con p = NULL?");
	var opts12 = ds_list_create();
	ds_list_add(opts12, "Error");       // correcta
	ds_list_add(opts12, "0");
	ds_list_add(opts12, "&x");
	ds_list_add(opts12, "Null");
	ds_map_add(q12, "options", opts12);
	ds_map_add(q12, "correct", 0);
	ds_map_add(q12, "not_appear", false);
	ds_list_add(questions, q12);

	// Pregunta 13
	var q13 = ds_map_create();
	ds_map_add(q13, "text", "¿Cuál es el valor de *&*p si p = &x?");
	var opts13 = ds_list_create();
	ds_list_add(opts13, "*p");
	ds_list_add(opts13, "x");           // correcta
	ds_list_add(opts13, "&x");
	ds_list_add(opts13, "p");
	ds_map_add(q13, "options", opts13);
	ds_map_add(q13, "correct", 1);
	ds_map_add(q13, "not_appear", false);
	ds_list_add(questions, q13);

	// Pregunta 14
	var q14 = ds_map_create();
	ds_map_add(q14, "text", "¿Cuál es la dirección de memoria de x?");
	var opts14 = ds_list_create();
	ds_list_add(opts14, "*p");
	ds_list_add(opts14, "x");
	ds_list_add(opts14, "&x");          // correcta
	ds_list_add(opts14, "p");
	ds_map_add(q14, "options", opts14);
	ds_map_add(q14, "correct", 2);
	ds_map_add(q14, "not_appear", false);
	ds_list_add(questions, q14);

	// Pregunta 15
	var q15 = ds_map_create();
	ds_map_add(q15, "text", "¿Cuál es el valor apuntado por p?");
	var opts15 = ds_list_create();
	ds_list_add(opts15, "*p");           // correcta
	ds_list_add(opts15, "&p");
	ds_list_add(opts15, "x");
	ds_list_add(opts15, "p");
	ds_map_add(q15, "options", opts15);
	ds_map_add(q15, "correct", 0);
	ds_map_add(q15, "not_appear", false);
	ds_list_add(questions, q15);


	
}

function preguntas_jefe1(){
	
	// Pregunta 1
	var q1 = ds_map_create();
	ds_map_add(q1, "text", "Que devuelve *(&(*p)) si p apunta a x?");
	var opts1 = ds_list_create();
	ds_list_add(opts1, "Valor de x");        // correcta
	ds_list_add(opts1, "Direccion de x");
	ds_list_add(opts1, "p");
	ds_list_add(opts1, "&p");
	ds_map_add(q1, "options", opts1);
	ds_map_add(q1, "correct", 0);
	ds_map_add(q1, "not_appear", false);
	ds_list_add(questions, q1);

	// Pregunta 2
	var q2 = ds_map_create();
	ds_map_add(q2, "text", "Que devuelve &(*(&x))?");
	var opts2 = ds_list_create();
	ds_list_add(opts2, "Direccion de x");    // correcta
	ds_list_add(opts2, "Valor de x");
	ds_list_add(opts2, "p");
	ds_list_add(opts2, "*p");
	ds_map_add(q2, "options", opts2);
	ds_map_add(q2, "correct", 0);
	ds_map_add(q2, "not_appear", false);
	ds_list_add(questions, q2);

	// Pregunta 3
	var q3 = ds_map_create();
	ds_map_add(q3, "text", "Si int *p = NULL; que pasa al hacer *p?");
	var opts3 = ds_list_create();
	ds_list_add(opts3, "Error");             // correcta
	ds_list_add(opts3, "Devuelve 0");
	ds_list_add(opts3, "Direccion de p");
	ds_list_add(opts3, "Nada");
	ds_map_add(q3, "options", opts3);
	ds_map_add(q3, "correct", 0);
	ds_map_add(q3, "not_appear", false);
	ds_list_add(questions, q3);

	// Pregunta 4
	var q4 = ds_map_create();
	ds_map_add(q4, "text", "Que devuelve *&(*(&*&p) *p = &x)?");
	var opts4 = ds_list_create();
	ds_list_add(opts4, "Valor de p");        // correcta
	ds_list_add(opts4, "Valor de x");
	ds_list_add(opts4, "Direccion de x");
	ds_list_add(opts4, "Error");
	ds_map_add(q4, "options", opts4);
	ds_map_add(q4, "correct", 0);
	ds_map_add(q4, "not_appear", false);
	ds_list_add(questions, q4);

	// Pregunta 5
	var q5 = ds_map_create();
	ds_map_add(q5, "text", "Que retorna **&*(&p) si *p = &x?");
	var opts5 = ds_list_create();
	ds_list_add(opts5, "Valor de x");        // correcta
	ds_list_add(opts5, "Direccion de x");
	ds_list_add(opts5, "p");
	ds_list_add(opts5, "&p");
	ds_map_add(q5, "options", opts5);
	ds_map_add(q5, "correct", 0);
	ds_map_add(q5, "not_appear", false);
	ds_list_add(questions, q5);

	// Pregunta 6
	var q6 = ds_map_create();
	ds_map_add(q6, "text", "Que devuelve &(*(&(*(&(*(&(*p))))))) si p apunta a x?");
	var opts6 = ds_list_create();
	ds_list_add(opts6, "Direccion de x");    // correcta
	ds_list_add(opts6, "Valor de x");
	ds_list_add(opts6, "p");
	ds_list_add(opts6, "*p");
	ds_map_add(q6, "options", opts6);
	ds_map_add(q6, "correct", 0);
	ds_map_add(q6, "not_appear", false);
	ds_list_add(questions, q6);
	


}