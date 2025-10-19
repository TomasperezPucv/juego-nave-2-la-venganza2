//aca va la logica relacionada con llenar las preguntas 
//una funcion para los niveles y otra para los jefes xd
function lista_nivel1(){
	
	//PREGUNTAS NIVEL 1
	// Pregunta 1
	var q1 = ds_map_create();
	ds_map_add(q1, "text", "Cual es la direccion de memoria de x?");
	var opts1 = ds_list_create();
	ds_list_add(opts1, "&x");              // correcta
	ds_list_add(opts1, "*x");
	ds_list_add(opts1, "x");
	ds_list_add(opts1, "p");
	ds_map_add(q1, "options", opts1);
	ds_map_add(q1, "correct", 0);
	ds_map_add(q1, "not_appear", false);
	ds_list_add(questions, q1);

	// Pregunta 2
	var q2 = ds_map_create();
	ds_map_add(q2, "text", "Cual es el valor apuntado por p?");
	var opts2 = ds_list_create();
	ds_list_add(opts2, "*p");              // correcta
	ds_list_add(opts2, "&p");
	ds_list_add(opts2, "p");
	ds_list_add(opts2, "&x");
	ds_map_add(q2, "options", opts2);
	ds_map_add(q2, "correct", 0);
	ds_map_add(q2, "not_appear", false);
	ds_list_add(questions, q2);

	// Pregunta 3
	var q3 = ds_map_create();
	ds_map_add(q3, "text", "Que devuelve *(&x)?");
	var opts3 = ds_list_create();
	ds_list_add(opts3, "x");               // correcta
	ds_list_add(opts3, "&x");
	ds_list_add(opts3, "*x");
	ds_list_add(opts3, "p");
	ds_map_add(q3, "options", opts3);
	ds_map_add(q3, "correct", 0);
	ds_map_add(q3, "not_appear", false);
	ds_list_add(questions, q3);

	// Pregunta 4
	var q4 = ds_map_create();
	ds_map_add(q4, "text", "Que representa *&x si x = 10?");
	var opts4 = ds_list_create();
	ds_list_add(opts4, "x");               // correcta
	ds_list_add(opts4, "&x");
	ds_list_add(opts4, "*p");
	ds_list_add(opts4, "10");
	ds_map_add(q4, "options", opts4);
	ds_map_add(q4, "correct", 0);
	ds_map_add(q4, "not_appear", false);
	ds_list_add(questions, q4);

	// Pregunta 5
	var q5 = ds_map_create();
	ds_map_add(q5, "text", "Si int *p = &x ¿Que significa p?");
	var opts5 = ds_list_create();
	ds_list_add(opts5, "La direccion de x");  // correcta
	ds_list_add(opts5, "El valor de x");
	ds_list_add(opts5, "La dirección de p");
	ds_list_add(opts5, "Nada, está vacio");
	ds_map_add(q5, "options", opts5);
	ds_map_add(q5, "correct", 0);
	ds_map_add(q5, "not_appear", false);
	ds_list_add(questions, q5);

	// Pregunta 6
	var q6 = ds_map_create();
	ds_map_add(q6, "text", "A que equivale &(*p) si p = &x?");
	var opts6 = ds_list_create();
	ds_list_add(opts6, "La direccion de x"); // correcta
	ds_list_add(opts6, "El valor de x");
	ds_list_add(opts6, "p");
	ds_list_add(opts6, "*x");
	ds_map_add(q6, "options", opts6);
	ds_map_add(q6, "correct", 0);
	ds_map_add(q6, "not_appear", false);
	ds_list_add(questions, q6);

	// Pregunta 7
	var q7 = ds_map_create();
	ds_map_add(q7, "text", "A que es equivalente &(*p)?");
	var opts7 = ds_list_create();
	ds_list_add(opts7, "p");               // correcta
	ds_list_add(opts7, "x");
	ds_list_add(opts7, "&x");
	ds_list_add(opts7, "*x");
	ds_map_add(q7, "options", opts7);
	ds_map_add(q7, "correct", 0);
	ds_map_add(q7, "not_appear", false);
	ds_list_add(questions, q7);

	// Pregunta 8
	var q8 = ds_map_create();
	ds_map_add(q8, "text", "A que equivale (&(&x))?");
	var opts8 = ds_list_create();
	ds_list_add(opts8, "x");               // correcta
	ds_list_add(opts8, "&x");
	ds_list_add(opts8, "*x");
	ds_list_add(opts8, "p");
	ds_map_add(q8, "options", opts8);
	ds_map_add(q8, "correct", 0);
	ds_map_add(q8, "not_appear", false);
	ds_list_add(questions, q8);

	// Pregunta 9
	var q9 = ds_map_create();
	ds_map_add(q9, "text", "Si int p = &x;, que representa *&p?");
	var opts9 = ds_list_create();
	ds_list_add(opts9, "El valor de x");   // correcta
	ds_list_add(opts9, "&x");
	ds_list_add(opts9, "p");
	ds_list_add(opts9, "*p");
	ds_map_add(q9, "options", opts9);
	ds_map_add(q9, "correct", 0);
	ds_map_add(q9, "not_appear", false);
	ds_list_add(questions, q9);

	// Pregunta 10
	var q10 = ds_map_create();
	ds_map_add(q10, "text", "A que equivale (&(&*(&x)))?");
	var opts10 = ds_list_create();
	ds_list_add(opts10, "El valor de x");  // correcta
	ds_list_add(opts10, "&x");
	ds_list_add(opts10, "*x");
	ds_list_add(opts10, "p");
	ds_map_add(q10, "options", opts10);
	ds_map_add(q10, "correct", 0);
	ds_map_add(q10, "not_appear", false);
	ds_list_add(questions, q10);

	// Pregunta 11
	var q11 = ds_map_create();
	ds_map_add(q11, "text", "Que significa &x + 0 y que pasa al aplicar *(&x + 0)?");
	var opts11 = ds_list_create();
	ds_list_add(opts11, "&x + 0 es la direccion de x; *(&x + 0) es el valor de x"); // correcta
	ds_list_add(opts11, "&x + 0 es el valor de x; *(&x + 0) es la direccion de x");
	ds_list_add(opts11, "Ambos devuelven x");
	ds_list_add(opts11, "Ambos devuelven &x");
	ds_map_add(q11, "options", opts11);
	ds_map_add(q11, "correct", 0);
	ds_map_add(q11, "not_appear", false);
	ds_list_add(questions, q11);

	// Pregunta 12
	var q12 = ds_map_create();
	ds_map_add(q12, "text", "Si int y = 20; int *py = &y;, que devuelve &(*py)?");
	var opts12 = ds_list_create();
	ds_list_add(opts12, "Direccion de y"); // correcta
	ds_list_add(opts12, "Valor de y");
	ds_list_add(opts12, "20");
	ds_list_add(opts12, "py");
	ds_map_add(q12, "options", opts12);
	ds_map_add(q12, "correct", 0);
	ds_map_add(q12, "not_appear", false);
	ds_list_add(questions, q12);

	// Pregunta 13
	var q13 = ds_map_create();
	ds_map_add(q13, "text", "Cual es el valor de *&*p si p = &x?");
	var opts13 = ds_list_create();
	ds_list_add(opts13, "Valor de x");  // correcta
	ds_list_add(opts13, "&x");
	ds_list_add(opts13, "p");
	ds_list_add(opts13, "*x");
	ds_map_add(q13, "options", opts13);
	ds_map_add(q13, "correct", 0);
	ds_map_add(q13, "not_appear", false);
	ds_list_add(questions, q13);

	// Pregunta 14
	var q14 = ds_map_create();
	ds_map_add(q14, "text", "Que operador obtiene el valor apuntado por un puntero?");
	var opts14 = ds_list_create();
	ds_list_add(opts14, "*");              // correcta
	ds_list_add(opts14, "&");
	ds_list_add(opts14, "^");
	ds_list_add(opts14, "%");
	ds_map_add(q14, "options", opts14);
	ds_map_add(q14, "correct", 0);
	ds_map_add(q14, "not_appear", false);
	ds_list_add(questions, q14);

	// Pregunta 15
	var q15 = ds_map_create();
	ds_map_add(q15, "text", "Que operador obtiene la dirección de una variable?");
	var opts15 = ds_list_create();
	ds_list_add(opts15, "&");              // correcta
	ds_list_add(opts15, "*");
	ds_list_add(opts15, "$");
	ds_list_add(opts15, "#");
	ds_map_add(q15, "options", opts15);
	ds_map_add(q15, "correct", 0);
	ds_map_add(q15, "not_appear", false);
	ds_list_add(questions, q15);
	
}

function preguntas_jefe1(){
	var q1 = ds_map_create();
	ds_map_add(q1, "text", "selecciona la correcta");
	var opts1 = ds_list_create();
	ds_list_add(opts1, "si");              // correcta
	ds_list_add(opts1, "no");
	ds_list_add(opts1, "no");
	ds_list_add(opts1, "no");
	ds_map_add(q1, "options", opts1);
	ds_map_add(q1, "correct", 0);
	ds_map_add(q1, "not_appear", false);
	ds_list_add(questions, q1);

	// Pregunta 2
	var q2 = ds_map_create();
	ds_map_add(q2, "text", "Cual es el valor apuntado por p?");
	var opts2 = ds_list_create();
	ds_list_add(opts2, "si");              // correcta
	ds_list_add(opts2, "no");
	ds_list_add(opts2, "no");
	ds_list_add(opts2, "no");
	ds_map_add(q2, "options", opts2);
	ds_map_add(q2, "correct", 0);
	ds_map_add(q2, "not_appear", false);
	ds_list_add(questions, q2);

	// Pregunta 3
	var q3 = ds_map_create();
	ds_map_add(q3, "text", "Que devuelve *(&x)?");
	var opts3 = ds_list_create();
	ds_list_add(opts3, "si");               // correcta
	ds_list_add(opts3, "no");
	ds_list_add(opts3, "no");
	ds_list_add(opts3, "no");
	ds_map_add(q3, "options", opts3);
	ds_map_add(q3, "correct", 0);
	ds_map_add(q3, "not_appear", false);
	ds_list_add(questions, q3);

	// Pregunta 4
	var q4 = ds_map_create();
	ds_map_add(q4, "text", "Que representa *&x si x = 10?");
	var opts4 = ds_list_create();
	ds_list_add(opts4, "si");               // correcta
	ds_list_add(opts4, "no");
	ds_list_add(opts4, "no");
	ds_list_add(opts4, "no");
	ds_map_add(q4, "options", opts4);
	ds_map_add(q4, "correct", 0);
	ds_map_add(q4, "not_appear", false);
	ds_list_add(questions, q4);

	// Pregunta 5
	var q5 = ds_map_create();
	ds_map_add(q5, "text", "Si int *p = &x ¿Que significa p?");
	var opts5 = ds_list_create();
	ds_list_add(opts5, "si");  // correcta
	ds_list_add(opts5, "no");
	ds_list_add(opts5, "no");
	ds_list_add(opts5, "no");
	ds_map_add(q5, "options", opts5);
	ds_map_add(q5, "correct", 0);
	ds_map_add(q5, "not_appear", false);
	ds_list_add(questions, q5);

}

function lista_nivel2(){
	var q1 = ds_map_create();
	ds_map_add(q1, "text", "selecciona la correcta");
	var opts1 = ds_list_create();
	ds_list_add(opts1, "si");              // correcta
	ds_list_add(opts1, "no");
	ds_list_add(opts1, "no");
	ds_list_add(opts1, "no");
	ds_map_add(q1, "options", opts1);
	ds_map_add(q1, "correct", 0);
	ds_map_add(q1, "not_appear", false);
	ds_list_add(questions, q1);

	// Pregunta 2
	var q2 = ds_map_create();
	ds_map_add(q2, "text", "Cual es el valor apuntado por p?");
	var opts2 = ds_list_create();
	ds_list_add(opts2, "si");              // correcta
	ds_list_add(opts2, "no");
	ds_list_add(opts2, "no");
	ds_list_add(opts2, "no");
	ds_map_add(q2, "options", opts2);
	ds_map_add(q2, "correct", 0);
	ds_map_add(q2, "not_appear", false);
	ds_list_add(questions, q2);

	// Pregunta 3
	var q3 = ds_map_create();
	ds_map_add(q3, "text", "Que devuelve *(&x)?");
	var opts3 = ds_list_create();
	ds_list_add(opts3, "si");               // correcta
	ds_list_add(opts3, "no");
	ds_list_add(opts3, "no");
	ds_list_add(opts3, "no");
	ds_map_add(q3, "options", opts3);
	ds_map_add(q3, "correct", 0);
	ds_map_add(q3, "not_appear", false);
	ds_list_add(questions, q3);

	// Pregunta 4
	var q4 = ds_map_create();
	ds_map_add(q4, "text", "Que representa *&x si x = 10?");
	var opts4 = ds_list_create();
	ds_list_add(opts4, "si");               // correcta
	ds_list_add(opts4, "no");
	ds_list_add(opts4, "no");
	ds_list_add(opts4, "no");
	ds_map_add(q4, "options", opts4);
	ds_map_add(q4, "correct", 0);
	ds_map_add(q4, "not_appear", false);
	ds_list_add(questions, q4);

	// Pregunta 5
	var q5 = ds_map_create();
	ds_map_add(q5, "text", "Si int *p = &x ¿Que significa p?");
	var opts5 = ds_list_create();
	ds_list_add(opts5, "si");  // correcta
	ds_list_add(opts5, "no");
	ds_list_add(opts5, "no");
	ds_list_add(opts5, "no");
	ds_map_add(q5, "options", opts5);
	ds_map_add(q5, "correct", 0);
	ds_map_add(q5, "not_appear", false);
	ds_list_add(questions, q5);

	// Pregunta 6
	var q6 = ds_map_create();
	ds_map_add(q6, "text", "A que equivale &(*p) si p = &x?");
	var opts6 = ds_list_create();
	ds_list_add(opts6, "si"); // correcta
	ds_list_add(opts6, "no");
	ds_list_add(opts6, "no");
	ds_list_add(opts6, "no");
	ds_map_add(q6, "options", opts6);
	ds_map_add(q6, "correct", 0);
	ds_map_add(q6, "not_appear", false);
	ds_list_add(questions, q6);

	// Pregunta 7
	var q7 = ds_map_create();
	ds_map_add(q7, "text", "A que es equivalente &(*p)?");
	var opts7 = ds_list_create();
	ds_list_add(opts7, "si");               // correcta
	ds_list_add(opts7, "no");
	ds_list_add(opts7, "no");
	ds_list_add(opts7, "no");
	ds_map_add(q7, "options", opts7);
	ds_map_add(q7, "correct", 0);
	ds_map_add(q7, "not_appear", false);
	ds_list_add(questions, q7);

	// Pregunta 8
	var q8 = ds_map_create();
	ds_map_add(q8, "text", "A que equivale (&(&x))?");
	var opts8 = ds_list_create();
	ds_list_add(opts8, "si");               // correcta
	ds_list_add(opts8, "no");
	ds_list_add(opts8, "no");
	ds_list_add(opts8, "no");
	ds_map_add(q8, "options", opts8);
	ds_map_add(q8, "correct", 0);
	ds_map_add(q8, "not_appear", false);
	ds_list_add(questions, q8);

	// Pregunta 9
	var q9 = ds_map_create();
	ds_map_add(q9, "text", "Si int p = &x;, que representa *&p?");
	var opts9 = ds_list_create();
	ds_list_add(opts9, "si");   // correcta
	ds_list_add(opts9, "no");
	ds_list_add(opts9, "no");
	ds_list_add(opts9, "no");
	ds_map_add(q9, "options", opts9);
	ds_map_add(q9, "correct", 0);
	ds_map_add(q9, "not_appear", false);
	ds_list_add(questions, q9);

	// Pregunta 10
	var q10 = ds_map_create();
	ds_map_add(q10, "text", "A que equivale (&(&*(&x)))?");
	var opts10 = ds_list_create();
	ds_list_add(opts10, "si");  // correcta
	ds_list_add(opts10, "no");
	ds_list_add(opts10, "no");
	ds_list_add(opts10, "no");
	ds_map_add(q10, "options", opts10);
	ds_map_add(q10, "correct", 0);
	ds_map_add(q10, "not_appear", false);
	ds_list_add(questions, q10);

	// Pregunta 11
	var q11 = ds_map_create();
	ds_map_add(q11, "text", "Que significa &x + 0 y que pasa al aplicar *(&x + 0)?");
	var opts11 = ds_list_create();
	ds_list_add(opts11, "si"); // correcta
	ds_list_add(opts11, "no");
	ds_list_add(opts11, "no");
	ds_list_add(opts11, "no");
	ds_map_add(q11, "options", opts11);
	ds_map_add(q11, "correct", 0);
	ds_map_add(q11, "not_appear", false);
	ds_list_add(questions, q11);

	// Pregunta 12
	var q12 = ds_map_create();
	ds_map_add(q12, "text", "Si int y = 20; int *py = &y;, que devuelve &(*py)?");
	var opts12 = ds_list_create();
	ds_list_add(opts12, "si"); // correcta
	ds_list_add(opts12, "no");
	ds_list_add(opts12, "no");
	ds_list_add(opts12, "no");
	ds_map_add(q12, "options", opts12);
	ds_map_add(q12, "correct", 0);
	ds_map_add(q12, "not_appear", false);
	ds_list_add(questions, q12);

	// Pregunta 13
	var q13 = ds_map_create();
	ds_map_add(q13, "text", "Cual es el valor de *&*p si p = &x?");
	var opts13 = ds_list_create();
	ds_list_add(opts13, "si");  // correcta
	ds_list_add(opts13, "no");
	ds_list_add(opts13, "no");
	ds_list_add(opts13, "no");
	ds_map_add(q13, "options", opts13);
	ds_map_add(q13, "correct", 0);
	ds_map_add(q13, "not_appear", false);
	ds_list_add(questions, q13);

	// Pregunta 14
	var q14 = ds_map_create();
	ds_map_add(q14, "text", "Que operador obtiene el valor apuntado por un puntero?");
	var opts14 = ds_list_create();
	ds_list_add(opts14, "si");              // correcta
	ds_list_add(opts14, "no");
	ds_list_add(opts14, "no");
	ds_list_add(opts14, "no");
	ds_map_add(q14, "options", opts14);
	ds_map_add(q14, "correct", 0);
	ds_map_add(q14, "not_appear", false);
	ds_list_add(questions, q14);

	// Pregunta 15
	var q15 = ds_map_create();
	ds_map_add(q15, "text", "Que operador obtiene la dirección de una variable?");
	var opts15 = ds_list_create();
	ds_list_add(opts15, "si");              // correcta
	ds_list_add(opts15, "no");
	ds_list_add(opts15, "no");
	ds_list_add(opts15, "no");
	ds_map_add(q15, "options", opts15);
	ds_map_add(q15, "correct", 0);
	ds_map_add(q15, "not_appear", false);
	ds_list_add(questions, q15);
}

function preguntas_jefe2(){
	var q1 = ds_map_create();
	ds_map_add(q1, "text", "selecciona la correcta");
	var opts1 = ds_list_create();
	ds_list_add(opts1, "si");              // correcta
	ds_list_add(opts1, "no");
	ds_list_add(opts1, "no");
	ds_list_add(opts1, "no");
	ds_map_add(q1, "options", opts1);
	ds_map_add(q1, "correct", 0);
	ds_map_add(q1, "not_appear", false);
	ds_list_add(questions, q1);

	// Pregunta 2
	var q2 = ds_map_create();
	ds_map_add(q2, "text", "Cual es el valor apuntado por p?");
	var opts2 = ds_list_create();
	ds_list_add(opts2, "si");              // correcta
	ds_list_add(opts2, "no");
	ds_list_add(opts2, "no");
	ds_list_add(opts2, "no");
	ds_map_add(q2, "options", opts2);
	ds_map_add(q2, "correct", 0);
	ds_map_add(q2, "not_appear", false);
	ds_list_add(questions, q2);

	// Pregunta 3
	var q3 = ds_map_create();
	ds_map_add(q3, "text", "Que devuelve *(&x)?");
	var opts3 = ds_list_create();
	ds_list_add(opts3, "si");               // correcta
	ds_list_add(opts3, "no");
	ds_list_add(opts3, "no");
	ds_list_add(opts3, "no");
	ds_map_add(q3, "options", opts3);
	ds_map_add(q3, "correct", 0);
	ds_map_add(q3, "not_appear", false);
	ds_list_add(questions, q3);

	// Pregunta 4
	var q4 = ds_map_create();
	ds_map_add(q4, "text", "Que representa *&x si x = 10?");
	var opts4 = ds_list_create();
	ds_list_add(opts4, "si");               // correcta
	ds_list_add(opts4, "no");
	ds_list_add(opts4, "no");
	ds_list_add(opts4, "no");
	ds_map_add(q4, "options", opts4);
	ds_map_add(q4, "correct", 0);
	ds_map_add(q4, "not_appear", false);
	ds_list_add(questions, q4);

	// Pregunta 5
	var q5 = ds_map_create();
	ds_map_add(q5, "text", "Si int *p = &x ¿Que significa p?");
	var opts5 = ds_list_create();
	ds_list_add(opts5, "si");  // correcta
	ds_list_add(opts5, "no");
	ds_list_add(opts5, "no");
	ds_list_add(opts5, "no");
	ds_map_add(q5, "options", opts5);
	ds_map_add(q5, "correct", 0);
	ds_map_add(q5, "not_appear", false);
	ds_list_add(questions, q5);

}

function lista_nivel3(){
	var q1 = ds_map_create();
	ds_map_add(q1, "text", "selecciona la correcta");
	var opts1 = ds_list_create();
	ds_list_add(opts1, "si");              // correcta
	ds_list_add(opts1, "no");
	ds_list_add(opts1, "no");
	ds_list_add(opts1, "no");
	ds_map_add(q1, "options", opts1);
	ds_map_add(q1, "correct", 0);
	ds_map_add(q1, "not_appear", false);
	ds_list_add(questions, q1);

	// Pregunta 2
	var q2 = ds_map_create();
	ds_map_add(q2, "text", "Cual es el valor apuntado por p?");
	var opts2 = ds_list_create();
	ds_list_add(opts2, "si");              // correcta
	ds_list_add(opts2, "no");
	ds_list_add(opts2, "no");
	ds_list_add(opts2, "no");
	ds_map_add(q2, "options", opts2);
	ds_map_add(q2, "correct", 0);
	ds_map_add(q2, "not_appear", false);
	ds_list_add(questions, q2);

	// Pregunta 3
	var q3 = ds_map_create();
	ds_map_add(q3, "text", "Que devuelve *(&x)?");
	var opts3 = ds_list_create();
	ds_list_add(opts3, "si");               // correcta
	ds_list_add(opts3, "no");
	ds_list_add(opts3, "no");
	ds_list_add(opts3, "no");
	ds_map_add(q3, "options", opts3);
	ds_map_add(q3, "correct", 0);
	ds_map_add(q3, "not_appear", false);
	ds_list_add(questions, q3);

	// Pregunta 4
	var q4 = ds_map_create();
	ds_map_add(q4, "text", "Que representa *&x si x = 10?");
	var opts4 = ds_list_create();
	ds_list_add(opts4, "si");               // correcta
	ds_list_add(opts4, "no");
	ds_list_add(opts4, "no");
	ds_list_add(opts4, "no");
	ds_map_add(q4, "options", opts4);
	ds_map_add(q4, "correct", 0);
	ds_map_add(q4, "not_appear", false);
	ds_list_add(questions, q4);

	// Pregunta 5
	var q5 = ds_map_create();
	ds_map_add(q5, "text", "Si int *p = &x ¿Que significa p?");
	var opts5 = ds_list_create();
	ds_list_add(opts5, "si");  // correcta
	ds_list_add(opts5, "no");
	ds_list_add(opts5, "no");
	ds_list_add(opts5, "no");
	ds_map_add(q5, "options", opts5);
	ds_map_add(q5, "correct", 0);
	ds_map_add(q5, "not_appear", false);
	ds_list_add(questions, q5);

	// Pregunta 6
	var q6 = ds_map_create();
	ds_map_add(q6, "text", "A que equivale &(*p) si p = &x?");
	var opts6 = ds_list_create();
	ds_list_add(opts6, "si"); // correcta
	ds_list_add(opts6, "no");
	ds_list_add(opts6, "no");
	ds_list_add(opts6, "no");
	ds_map_add(q6, "options", opts6);
	ds_map_add(q6, "correct", 0);
	ds_map_add(q6, "not_appear", false);
	ds_list_add(questions, q6);

	// Pregunta 7
	var q7 = ds_map_create();
	ds_map_add(q7, "text", "A que es equivalente &(*p)?");
	var opts7 = ds_list_create();
	ds_list_add(opts7, "si");               // correcta
	ds_list_add(opts7, "no");
	ds_list_add(opts7, "no");
	ds_list_add(opts7, "no");
	ds_map_add(q7, "options", opts7);
	ds_map_add(q7, "correct", 0);
	ds_map_add(q7, "not_appear", false);
	ds_list_add(questions, q7);

	// Pregunta 8
	var q8 = ds_map_create();
	ds_map_add(q8, "text", "A que equivale (&(&x))?");
	var opts8 = ds_list_create();
	ds_list_add(opts8, "si");               // correcta
	ds_list_add(opts8, "no");
	ds_list_add(opts8, "no");
	ds_list_add(opts8, "no");
	ds_map_add(q8, "options", opts8);
	ds_map_add(q8, "correct", 0);
	ds_map_add(q8, "not_appear", false);
	ds_list_add(questions, q8);

	// Pregunta 9
	var q9 = ds_map_create();
	ds_map_add(q9, "text", "Si int p = &x;, que representa *&p?");
	var opts9 = ds_list_create();
	ds_list_add(opts9, "si");   // correcta
	ds_list_add(opts9, "no");
	ds_list_add(opts9, "no");
	ds_list_add(opts9, "no");
	ds_map_add(q9, "options", opts9);
	ds_map_add(q9, "correct", 0);
	ds_map_add(q9, "not_appear", false);
	ds_list_add(questions, q9);

	// Pregunta 10
	var q10 = ds_map_create();
	ds_map_add(q10, "text", "A que equivale (&(&*(&x)))?");
	var opts10 = ds_list_create();
	ds_list_add(opts10, "si");  // correcta
	ds_list_add(opts10, "no");
	ds_list_add(opts10, "no");
	ds_list_add(opts10, "no");
	ds_map_add(q10, "options", opts10);
	ds_map_add(q10, "correct", 0);
	ds_map_add(q10, "not_appear", false);
	ds_list_add(questions, q10);

	// Pregunta 11
	var q11 = ds_map_create();
	ds_map_add(q11, "text", "Que significa &x + 0 y que pasa al aplicar *(&x + 0)?");
	var opts11 = ds_list_create();
	ds_list_add(opts11, "si"); // correcta
	ds_list_add(opts11, "no");
	ds_list_add(opts11, "no");
	ds_list_add(opts11, "no");
	ds_map_add(q11, "options", opts11);
	ds_map_add(q11, "correct", 0);
	ds_map_add(q11, "not_appear", false);
	ds_list_add(questions, q11);

	// Pregunta 12
	var q12 = ds_map_create();
	ds_map_add(q12, "text", "Si int y = 20; int *py = &y;, que devuelve &(*py)?");
	var opts12 = ds_list_create();
	ds_list_add(opts12, "si"); // correcta
	ds_list_add(opts12, "no");
	ds_list_add(opts12, "no");
	ds_list_add(opts12, "no");
	ds_map_add(q12, "options", opts12);
	ds_map_add(q12, "correct", 0);
	ds_map_add(q12, "not_appear", false);
	ds_list_add(questions, q12);

	// Pregunta 13
	var q13 = ds_map_create();
	ds_map_add(q13, "text", "Cual es el valor de *&*p si p = &x?");
	var opts13 = ds_list_create();
	ds_list_add(opts13, "si");  // correcta
	ds_list_add(opts13, "no");
	ds_list_add(opts13, "no");
	ds_list_add(opts13, "no");
	ds_map_add(q13, "options", opts13);
	ds_map_add(q13, "correct", 0);
	ds_map_add(q13, "not_appear", false);
	ds_list_add(questions, q13);

	// Pregunta 14
	var q14 = ds_map_create();
	ds_map_add(q14, "text", "Que operador obtiene el valor apuntado por un puntero?");
	var opts14 = ds_list_create();
	ds_list_add(opts14, "si");              // correcta
	ds_list_add(opts14, "no");
	ds_list_add(opts14, "no");
	ds_list_add(opts14, "no");
	ds_map_add(q14, "options", opts14);
	ds_map_add(q14, "correct", 0);
	ds_map_add(q14, "not_appear", false);
	ds_list_add(questions, q14);

	// Pregunta 15
	var q15 = ds_map_create();
	ds_map_add(q15, "text", "Que operador obtiene la dirección de una variable?");
	var opts15 = ds_list_create();
	ds_list_add(opts15, "si");              // correcta
	ds_list_add(opts15, "no");
	ds_list_add(opts15, "no");
	ds_list_add(opts15, "no");
	ds_map_add(q15, "options", opts15);
	ds_map_add(q15, "correct", 0);
	ds_map_add(q15, "not_appear", false);
	ds_list_add(questions, q15);

}

function preguntas_jefe3(){
	var q1 = ds_map_create();
	ds_map_add(q1, "text", "selecciona la correcta");
	var opts1 = ds_list_create();
	ds_list_add(opts1, "si");              // correcta
	ds_list_add(opts1, "no");
	ds_list_add(opts1, "no");
	ds_list_add(opts1, "no");
	ds_map_add(q1, "options", opts1);
	ds_map_add(q1, "correct", 0);
	ds_map_add(q1, "not_appear", false);
	ds_list_add(questions, q1);

	// Pregunta 2
	var q2 = ds_map_create();
	ds_map_add(q2, "text", "Cual es el valor apuntado por p?");
	var opts2 = ds_list_create();
	ds_list_add(opts2, "si");              // correcta
	ds_list_add(opts2, "no");
	ds_list_add(opts2, "no");
	ds_list_add(opts2, "no");
	ds_map_add(q2, "options", opts2);
	ds_map_add(q2, "correct", 0);
	ds_map_add(q2, "not_appear", false);
	ds_list_add(questions, q2);

	// Pregunta 3
	var q3 = ds_map_create();
	ds_map_add(q3, "text", "Que devuelve *(&x)?");
	var opts3 = ds_list_create();
	ds_list_add(opts3, "si");               // correcta
	ds_list_add(opts3, "no");
	ds_list_add(opts3, "no");
	ds_list_add(opts3, "no");
	ds_map_add(q3, "options", opts3);
	ds_map_add(q3, "correct", 0);
	ds_map_add(q3, "not_appear", false);
	ds_list_add(questions, q3);

	// Pregunta 4
	var q4 = ds_map_create();
	ds_map_add(q4, "text", "Que representa *&x si x = 10?");
	var opts4 = ds_list_create();
	ds_list_add(opts4, "si");               // correcta
	ds_list_add(opts4, "no");
	ds_list_add(opts4, "no");
	ds_list_add(opts4, "no");
	ds_map_add(q4, "options", opts4);
	ds_map_add(q4, "correct", 0);
	ds_map_add(q4, "not_appear", false);
	ds_list_add(questions, q4);

	// Pregunta 5
	var q5 = ds_map_create();
	ds_map_add(q5, "text", "Si int *p = &x ¿Que significa p?");
	var opts5 = ds_list_create();
	ds_list_add(opts5, "si");  // correcta
	ds_list_add(opts5, "no");
	ds_list_add(opts5, "no");
	ds_list_add(opts5, "no");
	ds_map_add(q5, "options", opts5);
	ds_map_add(q5, "correct", 0);
	ds_map_add(q5, "not_appear", false);
	ds_list_add(questions, q5);

	// Pregunta 6
	var q6 = ds_map_create();
	ds_map_add(q6, "text", "A que equivale &(*p) si p = &x?");
	var opts6 = ds_list_create();
	ds_list_add(opts6, "si"); // correcta
	ds_list_add(opts6, "no");
	ds_list_add(opts6, "no");
	ds_list_add(opts6, "no");
	ds_map_add(q6, "options", opts6);
	ds_map_add(q6, "correct", 0);
	ds_map_add(q6, "not_appear", false);
	ds_list_add(questions, q6);

	// Pregunta 7
	var q7 = ds_map_create();
	ds_map_add(q7, "text", "A que es equivalente &(*p)?");
	var opts7 = ds_list_create();
	ds_list_add(opts7, "si");               // correcta
	ds_list_add(opts7, "no");
	ds_list_add(opts7, "no");
	ds_list_add(opts7, "no");
	ds_map_add(q7, "options", opts7);
	ds_map_add(q7, "correct", 0);
	ds_map_add(q7, "not_appear", false);
	ds_list_add(questions, q7);

	// Pregunta 8
	var q8 = ds_map_create();
	ds_map_add(q8, "text", "A que equivale (&(&x))?");
	var opts8 = ds_list_create();
	ds_list_add(opts8, "si");               // correcta
	ds_list_add(opts8, "no");
	ds_list_add(opts8, "no");
	ds_list_add(opts8, "no");
	ds_map_add(q8, "options", opts8);
	ds_map_add(q8, "correct", 0);
	ds_map_add(q8, "not_appear", false);
	ds_list_add(questions, q8);

	// Pregunta 9
	var q9 = ds_map_create();
	ds_map_add(q9, "text", "Si int p = &x;, que representa *&p?");
	var opts9 = ds_list_create();
	ds_list_add(opts9, "si");   // correcta
	ds_list_add(opts9, "no");
	ds_list_add(opts9, "no");
	ds_list_add(opts9, "no");
	ds_map_add(q9, "options", opts9);
	ds_map_add(q9, "correct", 0);
	ds_map_add(q9, "not_appear", false);
	ds_list_add(questions, q9);

	// Pregunta 10
	var q10 = ds_map_create();
	ds_map_add(q10, "text", "A que equivale (&(&*(&x)))?");
	var opts10 = ds_list_create();
	ds_list_add(opts10, "si");  // correcta
	ds_list_add(opts10, "no");
	ds_list_add(opts10, "no");
	ds_list_add(opts10, "no");
	ds_map_add(q10, "options", opts10);
	ds_map_add(q10, "correct", 0);
	ds_map_add(q10, "not_appear", false);
	ds_list_add(questions, q10);

	// Pregunta 11
	var q11 = ds_map_create();
	ds_map_add(q11, "text", "Que significa &x + 0 y que pasa al aplicar *(&x + 0)?");
	var opts11 = ds_list_create();
	ds_list_add(opts11, "si"); // correcta
	ds_list_add(opts11, "no");
	ds_list_add(opts11, "no");
	ds_list_add(opts11, "no");
	ds_map_add(q11, "options", opts11);
	ds_map_add(q11, "correct", 0);
	ds_map_add(q11, "not_appear", false);
	ds_list_add(questions, q11);

	// Pregunta 12
	var q12 = ds_map_create();
	ds_map_add(q12, "text", "Si int y = 20; int *py = &y;, que devuelve &(*py)?");
	var opts12 = ds_list_create();
	ds_list_add(opts12, "si"); // correcta
	ds_list_add(opts12, "no");
	ds_list_add(opts12, "no");
	ds_list_add(opts12, "no");
	ds_map_add(q12, "options", opts12);
	ds_map_add(q12, "correct", 0);
	ds_map_add(q12, "not_appear", false);
	ds_list_add(questions, q12);

	// Pregunta 13
	var q13 = ds_map_create();
	ds_map_add(q13, "text", "Cual es el valor de *&*p si p = &x?");
	var opts13 = ds_list_create();
	ds_list_add(opts13, "si");  // correcta
	ds_list_add(opts13, "no");
	ds_list_add(opts13, "no");
	ds_list_add(opts13, "no");
	ds_map_add(q13, "options", opts13);
	ds_map_add(q13, "correct", 0);
	ds_map_add(q13, "not_appear", false);
	ds_list_add(questions, q13);

	// Pregunta 14
	var q14 = ds_map_create();
	ds_map_add(q14, "text", "Que operador obtiene el valor apuntado por un puntero?");
	var opts14 = ds_list_create();
	ds_list_add(opts14, "si");              // correcta
	ds_list_add(opts14, "no");
	ds_list_add(opts14, "no");
	ds_list_add(opts14, "no");
	ds_map_add(q14, "options", opts14);
	ds_map_add(q14, "correct", 0);
	ds_map_add(q14, "not_appear", false);
	ds_list_add(questions, q14);

	// Pregunta 15
	var q15 = ds_map_create();
	ds_map_add(q15, "text", "Que operador obtiene la dirección de una variable?");
	var opts15 = ds_list_create();
	ds_list_add(opts15, "si");              // correcta
	ds_list_add(opts15, "no");
	ds_list_add(opts15, "no");
	ds_list_add(opts15, "no");
	ds_map_add(q15, "options", opts15);
	ds_map_add(q15, "correct", 0);
	ds_map_add(q15, "not_appear", false);
	ds_list_add(questions, q15);

}
