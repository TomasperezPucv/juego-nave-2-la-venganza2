//aca va la logica relacionada con llenar las preguntas 
//una funcion para los niveles y otra para los jefes xd
function lista_nivel1(){
	
	//PREGUNTAS NIVEL 1

	// Pregunta 1
	var q1 = ds_map_create();
	ds_map_add(q1, "text", "Que operador obtiene el valor apuntado por un puntero?");
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
	ds_map_add(q2, "text", "Que operador obtiene la direccion de una variable?");
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
	ds_map_add(q3, "text", "Que devuelve *(&x)?");
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
	ds_map_add(q4, "text", "Que representa *&x si x = 10?");
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
	ds_map_add(q5, "text", "Si int *p = &x que tipo de valor contiene p?");
	var opts5 = ds_list_create();
	ds_list_add(opts5, "Valor");
	ds_list_add(opts5, "Direccion");    // correcta
	ds_list_add(opts5, "Null");
	ds_list_add(opts5, "x");
	ds_map_add(q5, "options", opts5);
	ds_map_add(q5, "correct", 1);
	ds_map_add(q5, "not_appear", false);
	ds_list_add(questions, q5);

	// Pregunta 6
	var q6 = ds_map_create();
	ds_map_add(q6, "text", "A que equivale &(*p) si p = &x?");
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
	ds_map_add(q7, "text", "A que es equivalente &(*p)?");
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
	ds_map_add(q8, "text", "Dos punteros pueden apuntar a lo mismo?");
	var opts8 = ds_list_create();
	ds_list_add(opts8, "No");
	ds_list_add(opts8, "Si");           // correcta
	ds_list_add(opts8, "Null");
	ds_list_add(opts8, "Error");
	ds_map_add(q8, "options", opts8);
	ds_map_add(q8, "correct", 1);
	ds_map_add(q8, "not_appear", false);
	ds_list_add(questions, q8);

	// Pregunta 9
	var q9 = ds_map_create();
	ds_map_add(q9, "text", "Si int *p = &x que representa **&p?");
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
	ds_map_add(q10, "text", "Cual es el valor inicial de un puntero sin asignar?");
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
	ds_map_add(q12, "text", "Que pasa si haces *p con p = NULL?");
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
	ds_map_add(q13, "text", "Cual es el valor de *&*p si p = &x?");
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
	ds_map_add(q14, "text", "Cual es la direccion de memoria de x?");
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
	ds_map_add(q15, "text", "Cual es el valor apuntado por p?");
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
	
	// Jefe1 - Pregunta 1
	var q1 = ds_map_create();
	ds_map_add(q1, "text", "Que devuelve *(&(*p)) si p apunta a x?");
	var opts1 = ds_list_create();
	ds_list_add(opts1, "&x");
	ds_list_add(opts1, "p");
	ds_list_add(opts1, "x");    // correcta
	ds_list_add(opts1, "*p");
	ds_map_add(q1, "options", opts1);
	ds_map_add(q1, "correct", 2);
	ds_map_add(q1, "not_appear", false);
	ds_list_add(questions, q1);

	// Jefe1 - Pregunta 2
	var q2 = ds_map_create();
	ds_map_add(q2, "text", "Que devuelve &(*(&x))?");
	var opts2 = ds_list_create();
	ds_list_add(opts2, "&x");   // correcta
	ds_list_add(opts2, "x");
	ds_list_add(opts2, "p");
	ds_list_add(opts2, "*x");
	ds_map_add(q2, "options", opts2);
	ds_map_add(q2, "correct", 0);
	ds_map_add(q2, "not_appear", false);
	ds_list_add(questions, q2);

	// Jefe1 - Pregunta 3
	var q3 = ds_map_create();
	ds_map_add(q3, "text", "Si p == NULL es seguro hacer *p?");
	var opts3 = ds_list_create();
	ds_list_add(opts3, "si");
	ds_list_add(opts3, "no");   // correcta
	ds_list_add(opts3, "error");
	ds_list_add(opts3, "null");
	ds_map_add(q3, "options", opts3);
	ds_map_add(q3, "correct", 1);
	ds_map_add(q3, "not_appear", false);
	ds_list_add(questions, q3);

	// Jefe1 - Pregunta 4
	var q4 = ds_map_create();
	ds_map_add(q4, "text", "Si int *p = &x; que devuelve *(&*(&p))?");
	var opts4 = ds_list_create();
	ds_list_add(opts4, "x");
	ds_list_add(opts4, "&x");
	ds_list_add(opts4, "*p");
	ds_list_add(opts4, "p");    // correcta
	ds_map_add(q4, "options", opts4);
	ds_map_add(q4, "correct", 3);
	ds_map_add(q4, "not_appear", false);
	ds_list_add(questions, q4);

	// Jefe1 - Pregunta 5
	var q5 = ds_map_create();
	ds_map_add(q5, "text", "int x = 10; int *p = &x; puedes hacer *p = 5?");
	var opts5 = ds_list_create();
	ds_list_add(opts5, "no");
	ds_list_add(opts5, "error");
	ds_list_add(opts5, "si");   // correcta
	ds_list_add(opts5, "x");
	ds_map_add(q5, "options", opts5);
	ds_map_add(q5, "correct", 2);
	ds_map_add(q5, "not_appear", false);
	ds_list_add(questions, q5);

	// Jefe1 - Pregunta 6
	var q6 = ds_map_create();
	ds_map_add(q6, "text", "Que devuelve &(*(&(*p))) si p apunta a x?");
	var opts6 = ds_list_create();
	ds_list_add(opts6, "p");
	ds_list_add(opts6, "&x");   // correcta
	ds_list_add(opts6, "x");
	ds_list_add(opts6, "*p");
	ds_map_add(q6, "options", opts6);
	ds_map_add(q6, "correct", 1);
	ds_map_add(q6, "not_appear", false);
	ds_list_add(questions, q6);

	// Jefe1 - Pregunta 7
	var q7 = ds_map_create();
	ds_map_add(q7, "text", "Que tipo de valor esencialmente almacena un puntero?");
	var opts7 = ds_list_create();
	ds_list_add(opts7, "direccion");  // correcta
	ds_list_add(opts7, "valor");
	ds_list_add(opts7, "entero");
	ds_list_add(opts7, "puntero");
	ds_map_add(q7, "options", opts7);
	ds_map_add(q7, "correct", 0);
	ds_map_add(q7, "not_appear", false);
	ds_list_add(questions, q7);

	// Jefe1 - Pregunta 8
	var q8 = ds_map_create();
	ds_map_add(q8, "text", "Si int x = 10 y p = &x, que retorna *p?");
	var opts8 = ds_list_create();
	ds_list_add(opts8, "p");
	ds_list_add(opts8, "x");
	ds_list_add(opts8, "10");   // correcta
	ds_list_add(opts8, "*p");
	ds_map_add(q8, "options", opts8);
	ds_map_add(q8, "correct", 2);
	ds_map_add(q8, "not_appear", false);
	ds_list_add(questions, q8);

	// Jefe1 - Pregunta 9
	var q9 = ds_map_create();
	ds_map_add(q9, "text", "La expresion **&p es equivalente a que expresion?");
	var opts9 = ds_list_create();
	ds_list_add(opts9, "*p");   // correcta
	ds_list_add(opts9, "p");
	ds_list_add(opts9, "&p");
	ds_list_add(opts9, "x");
	ds_map_add(q9, "options", opts9);
	ds_map_add(q9, "correct", 0);
	ds_map_add(q9, "not_appear", false);
	ds_list_add(questions, q9);

	// Jefe1 - Pregunta 10
	var q10 = ds_map_create();
	ds_map_add(q10, "text", "Si int y = 20; int *py = &y; que devuelve &(*py)?");
	var opts10 = ds_list_create();
	ds_list_add(opts10, "&y");  // correcta
	ds_list_add(opts10, "y");
	ds_list_add(opts10, "py");
	ds_list_add(opts10, "*py");
	ds_map_add(q10, "options", opts10);
	ds_map_add(q10, "correct", 0);
	ds_map_add(q10, "not_appear", false);
	ds_list_add(questions, q10);

}


function lista_nivel2(){
	// Nivel 2 - Pregunta 1
	var q1 = ds_map_create();
	ds_map_add(q1, "text", "arr[i] es equivalente a...");
	var opts1 = ds_list_create();
	ds_list_add(opts1, "arr+i");
	ds_list_add(opts1, "*arr[i]");
	ds_list_add(opts1, "&arr[i]");
	ds_list_add(opts1, "*(arr+i)"); // correcta
	ds_map_add(q1, "options", opts1);
	ds_map_add(q1, "correct", 3);
	ds_map_add(q1, "not_appear", false);
	ds_list_add(questions, q1);

	// Nivel 2 - Pregunta 2
	var q2 = ds_map_create();
	ds_map_add(q2, "text", "Si int **pp apunta a p y p apunta a x, que devuelve **pp?");
	var opts2 = ds_list_create();
	ds_list_add(opts2, "*p");
	ds_list_add(opts2, "&x");
	ds_list_add(opts2, "x"); // correcta
	ds_list_add(opts2, "p");
	ds_map_add(q2, "options", opts2);
	ds_map_add(q2, "correct", 2);
	ds_map_add(q2, "not_appear", false);
	ds_list_add(questions, q2);

	// Nivel 2 - Pregunta 3
	var q3 = ds_map_create();
	ds_map_add(q3, "text", "Si int arr = {1,2,3} que significa *(arr+2)?");
	var opts3 = ds_list_create();
	ds_list_add(opts3, "arr[2]");
	ds_list_add(opts3, "2");
	ds_list_add(opts3, "&arr[2]");
	ds_list_add(opts3, "3"); // correcta
	ds_map_add(q3, "options", opts3);
	ds_map_add(q3, "correct", 3);
	ds_map_add(q3, "not_appear", false);
	ds_list_add(questions, q3);

	// Nivel 2 - Pregunta 4
	var q4 = ds_map_create();
	ds_map_add(q4, "text", "int *p = a; que devuelve p[0]?");
	var opts4 = ds_list_create();
	ds_list_add(opts4, "&a[0]");
	ds_list_add(opts4, "p");
	ds_list_add(opts4, "*p[1]");
	ds_list_add(opts4, "a[0]"); // correcta
	ds_map_add(q4, "options", opts4);
	ds_map_add(q4, "correct", 3);
	ds_map_add(q4, "not_appear", false);
	ds_list_add(questions, q4);

	// Nivel 2 - Pregunta 5
	var q5 = ds_map_create();
	ds_map_add(q5, "text", "int a[]={1,2,3,4} que es a+2?");
	var opts5 = ds_list_create();
	ds_list_add(opts5, "a[2]");
	ds_list_add(opts5, "a[1]");
	ds_list_add(opts5, "*a+2");
	ds_list_add(opts5, "&a[2]"); // correcta
	ds_map_add(q5, "options", opts5);
	ds_map_add(q5, "correct", 3);
	ds_map_add(q5, "not_appear", false);
	ds_list_add(questions, q5);

	// Nivel 2 - Pregunta 6
	var q6 = ds_map_create();
	ds_map_add(q6, "text", "Que significa *(arr+i)+*(arr+j)?");
	var opts6 = ds_list_create();
	ds_list_add(opts6, "*arr[i]");
	ds_list_add(opts6, "&arr[i]");
	ds_list_add(opts6, "arr[i]+arr[j]"); // correcta
	ds_list_add(opts6, "*arr[i+j]");
	ds_map_add(q6, "options", opts6);
	ds_map_add(q6, "correct", 2);
	ds_map_add(q6, "not_appear", false);
	ds_list_add(questions, q6);

	// Nivel 2 - Pregunta 7
	var q7 = ds_map_create();
	ds_map_add(q7, "text", "int a[5]; a que apunta a+3?");
	var opts7 = ds_list_create();
	ds_list_add(opts7, "a+4");
	ds_list_add(opts7, "&a[3]"); // correcta
	ds_list_add(opts7, "a[3]");
	ds_list_add(opts7, "a[2]");
	ds_map_add(q7, "options", opts7);
	ds_map_add(q7, "correct", 1);
	ds_map_add(q7, "not_appear", false);
	ds_list_add(questions, q7);

	// Nivel 2 - Pregunta 8
	var q8 = ds_map_create();
	ds_map_add(q8, "text", "Que es *(arr+2) si arr es un arreglo de punteros?");
	var opts8 = ds_list_create();
	ds_list_add(opts8, "*arr[2]");
	ds_list_add(opts8, "&arr[2]");
	ds_list_add(opts8, "arr+2");
	ds_list_add(opts8, "arr[2]"); // correcta
	ds_map_add(q8, "options", opts8);
	ds_map_add(q8, "correct", 3);
	ds_map_add(q8, "not_appear", false);
	ds_list_add(questions, q8);

	// Nivel 2 - Pregunta 9
	var q9 = ds_map_create();
	ds_map_add(q9, "text", "Si int *p = arr; que devuelve *(p+1)?");
	var opts9 = ds_list_create();
	ds_list_add(opts9, "arr+1");
	ds_list_add(opts9, "&arr[1]");
	ds_list_add(opts9, "*arr[1]");
	ds_list_add(opts9, "arr[1]"); // correcta
	ds_map_add(q9, "options", opts9);
	ds_map_add(q9, "correct", 3);
	ds_map_add(q9, "not_appear", false);
	ds_list_add(questions, q9);

	// Nivel 2 - Pregunta 10
	var q10 = ds_map_create();
	ds_map_add(q10, "text", "char s[]='Hi'; que devuelve *(s+0)?");
	var opts10 = ds_list_create();
	ds_list_add(opts10, "&s[0]");
	ds_list_add(opts10, "'i'");
	ds_list_add(opts10, "'H'"); // correcta
	ds_list_add(opts10, "s[1]");
	ds_map_add(q10, "options", opts10);
	ds_map_add(q10, "correct", 2);
	ds_map_add(q10, "not_appear", false);
	ds_list_add(questions, q10);

	// Nivel 2 - Pregunta 11
	var q11 = ds_map_create();
	ds_map_add(q11, "text", "A que equivale *(*(arr+i)+j)?");
	var opts11 = ds_list_create();
	ds_list_add(opts11, "arr[i]");
	ds_list_add(opts11, "arr[i][j]"); // correcta
	ds_list_add(opts11, "&arr[i][j]");
	ds_list_add(opts11, "arr+i+j");
	ds_map_add(q11, "options", opts11);
	ds_map_add(q11, "correct", 1);
	ds_map_add(q11, "not_appear", false);
	ds_list_add(questions, q11);

	// Nivel 2 - Pregunta 12
	var q12 = ds_map_create();
	ds_map_add(q12, "text", "A que equivale *(*(arr+0)+0)?");
	var opts12 = ds_list_create();
	ds_list_add(opts12, "arr[0][0]"); // correcta
	ds_list_add(opts12, "*arr[0]");
	ds_list_add(opts12, "&arr[0]");
	ds_list_add(opts12, "arr+0");
	ds_map_add(q12, "options", opts12);
	ds_map_add(q12, "correct", 0);
	ds_map_add(q12, "not_appear", false);
	ds_list_add(questions, q12);

	// Nivel 2 - Pregunta 13
	var q13 = ds_map_create();
	ds_map_add(q13, "text", "Que hace *arr+1?");
	var opts13 = ds_list_create();
	ds_list_add(opts13, "arr[1]");
	ds_list_add(opts13, "*arr[1]");
	ds_list_add(opts13, "&arr[1]");
	ds_list_add(opts13, "arr[0]+1"); // correcta
	ds_map_add(q13, "options", opts13);
	ds_map_add(q13, "correct", 3);
	ds_map_add(q13, "not_appear", false);
	ds_list_add(questions, q13);

	// Nivel 2 - Pregunta 14
	var q14 = ds_map_create();
	ds_map_add(q14, "text", "Si char *s = 'Hola', que significa *(s+1)?");
	var opts14 = ds_list_create();
	ds_list_add(opts14, "'H'");
	ds_list_add(opts14, "o");        // correcta
	ds_list_add(opts14, "'a'");
	ds_list_add(opts14, "s[2]");
	ds_map_add(q14, "options", opts14);
	ds_map_add(q14, "correct", 1);
	ds_map_add(q14, "not_appear", false);
	ds_list_add(questions, q14);
}



function preguntas_jefe2(){
	
	// Pregunta 1
	var q1 = ds_map_create();
	ds_map_add(q1, "text", "Si int *p = arr; que devuelve *(p+3)?");
	var opts1 = ds_list_create();
	ds_list_add(opts1, "arr[2]");
	ds_list_add(opts1, "arr[3]");   // correcta
	ds_list_add(opts1, "arr[4]");
	ds_list_add(opts1, "p[3]");
	ds_map_add(q1, "options", opts1);
	ds_map_add(q1, "correct", 1);
	ds_map_add(q1, "not_appear", false);
	ds_list_add(questions, q1);

	// Pregunta 2
	var q2 = ds_map_create();
	ds_map_add(q2, "text", "A que equivale *(*(arr+1)+3) en una matriz?");
	var opts2 = ds_list_create();
	ds_list_add(opts2, "arr[0][3]");
	ds_list_add(opts2, "arr[1][3]"); // correcta
	ds_list_add(opts2, "arr[1][2]");
	ds_list_add(opts2, "arr[2][3]");
	ds_map_add(q2, "options", opts2);
	ds_map_add(q2, "correct", 1);
	ds_map_add(q2, "not_appear", false);
	ds_list_add(questions, q2);

	// Pregunta 3
	var q3 = ds_map_create();
	ds_map_add(q3, "text", "A que equivale **arr?");
	var opts3 = ds_list_create();
	ds_list_add(opts3, "arr[0][0]"); // correcta
	ds_list_add(opts3, "arr[1][0]");
	ds_list_add(opts3, "*arr");
	ds_list_add(opts3, "arr[0]");
	ds_map_add(q3, "options", opts3);
	ds_map_add(q3, "correct", 0);
	ds_map_add(q3, "not_appear", false);
	ds_list_add(questions, q3);

	// Pregunta 4
	var q4 = ds_map_create();
	ds_map_add(q4, "text", "A que equivale mat[1][2]?");
	var opts4 = ds_list_create();
	ds_list_add(opts4, "*(*(mat+1)+2)"); // correcta
	ds_list_add(opts4, "mat[1][3]");
	ds_list_add(opts4, "mat[0][2]");
	ds_list_add(opts4, "mat[2][2]");
	ds_map_add(q4, "options", opts4);
	ds_map_add(q4, "correct", 0);
	ds_map_add(q4, "not_appear", false);
	ds_list_add(questions, q4);

	// Pregunta 5
	var q5 = ds_map_create();
	ds_map_add(q5, "text", "A que equivale *(arr+(i+j))?");
	var opts5 = ds_list_create();
	ds_list_add(opts5, "arr[i+j]"); // correcta
	ds_list_add(opts5, "arr[i]+j");
	ds_list_add(opts5, "*(arr[i+j])");
	ds_list_add(opts5, "arr[i]+arr[j]");
	ds_map_add(q5, "options", opts5);
	ds_map_add(q5, "correct", 0);
	ds_map_add(q5, "not_appear", false);
	ds_list_add(questions, q5);

	// Pregunta 6
	var q6 = ds_map_create();
	ds_map_add(q6, "text", "A que equivale &a[2]?");
	var opts6 = ds_list_create();
	ds_list_add(opts6, "a+1");
	ds_list_add(opts6, "&a[2]"); // correcta
	ds_list_add(opts6, "a[2]");
	ds_list_add(opts6, "*a[2]");
	ds_map_add(q6, "options", opts6);
	ds_map_add(q6, "correct", 1);
	ds_map_add(q6, "not_appear", false);
	ds_list_add(questions, q6);

	// Pregunta 7
	var q7 = ds_map_create();
	ds_map_add(q7, "text", "Que es *(&a[2])?");
	var opts7 = ds_list_create();
	ds_list_add(opts7, "a[2]"); // correcta
	ds_list_add(opts7, "&a[2]");
	ds_list_add(opts7, "2");
	ds_list_add(opts7, "*(a+1)");
	ds_map_add(q7, "options", opts7);
	ds_map_add(q7, "correct", 0);
	ds_map_add(q7, "not_appear", false);
	ds_list_add(questions, q7);

	// Pregunta 8
	var q8 = ds_map_create();
	ds_map_add(q8, "text", "Si arr es un arreglo de enteros, que expresion accede a arr[4]?");
	var opts8 = ds_list_create();
	ds_list_add(opts8, "arr[3]");
	ds_list_add(opts8, "*(arr+4)"); // correcta
	ds_list_add(opts8, "arr+4");
	ds_list_add(opts8, "arr[5]");
	ds_map_add(q8, "options", opts8);
	ds_map_add(q8, "correct", 1);
	ds_map_add(q8, "not_appear", false);
	ds_list_add(questions, q8);

	// Pregunta 9
	var q9 = ds_map_create();
	ds_map_add(q9, "text", "Que expresion accede al valor en arr[i+j]?");
	var opts9 = ds_list_create();
	ds_list_add(opts9, "arr[i+j]");
	ds_list_add(opts9, "*(arr + i) + j");
	ds_list_add(opts9, "*(arr + (i + j))"); // correcta
	ds_list_add(opts9, "arr[i]+arr[j]");
	ds_map_add(q9, "options", opts9);
	ds_map_add(q9, "correct", 2);
	ds_map_add(q9, "not_appear", false);
	ds_list_add(questions, q9);

	// Pregunta 10
	var q10 = ds_map_create();
	ds_map_add(q10, "text", "Si p apunta a arr[3], que devuelve *(p-2)?");
	var opts10 = ds_list_create();
	ds_list_add(opts10, "arr[1]"); // correcta
	ds_list_add(opts10, "arr[2]");
	ds_list_add(opts10, "arr[0]");
	ds_list_add(opts10, "arr[3]");
	ds_map_add(q10, "options", opts10);
	ds_map_add(q10, "correct", 0);
	ds_map_add(q10, "not_appear", false);
	ds_list_add(questions, q10);
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

	// Pregunta 1
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
	ds_map_add(q1, "text", "struct Punto {int x,y;}; struct Punto *p; acceso a x?");
	var opts1 = ds_list_create();
	ds_list_add(opts1, "x");
	ds_list_add(opts1, "&x");
	ds_list_add(opts1, "p->x"); // correcta
	ds_list_add(opts1, "*p");
	ds_map_add(q1, "options", opts1);
	ds_map_add(q1, "correct", 2);
	ds_map_add(q1, "not_appear", false);
	ds_list_add(questions, q1);

	// Pregunta 2
	var q2 = ds_map_create();
	ds_map_add(q2, "text", "(*p).y es igual a:");
	var opts2 = ds_list_create();
	ds_list_add(opts2, "*y");
	ds_list_add(opts2, "y");
	ds_list_add(opts2, "p->y"); // correcta
	ds_list_add(opts2, "&y");
	ds_map_add(q2, "options", opts2);
	ds_map_add(q2, "correct", 2);
	ds_map_add(q2, "not_appear", false);
	ds_list_add(questions, q2);

	// Pregunta 3
	var q3 = ds_map_create();
	ds_map_add(q3, "text", "struct Persona *ptr; como acceder al campo edad?");
	var opts3 = ds_list_create();
	ds_list_add(opts3, "edad");
	ds_list_add(opts3, "&ptr");
	ds_list_add(opts3, "*ptr");
	ds_list_add(opts3, "ptr->edad"); // correcta
	ds_map_add(q3, "options", opts3);
	ds_map_add(q3, "correct", 3);
	ds_map_add(q3, "not_appear", false);
	ds_list_add(questions, q3);

	// Pregunta 4
	var q4 = ds_map_create();
	ds_map_add(q4, "text", "arr es un arreglo de structs; como obtener campo i-esimo?");
	var opts4 = ds_list_create();
	ds_list_add(opts4, "*arr[i]");
	ds_list_add(opts4, "arr.i");
	ds_list_add(opts4, "arr[i].campo"); // correcta
	ds_list_add(opts4, "arr[i]");
	ds_map_add(q4, "options", opts4);
	ds_map_add(q4, "correct", 2);
	ds_map_add(q4, "not_appear", false);
	ds_list_add(questions, q4);

	// Pregunta 5
	var q5 = ds_map_create();
	ds_map_add(q5, "text", "Que funcion asigna memoria sin inicializar?");
	var opts5 = ds_list_create();
	ds_list_add(opts5, "malloc"); // correcta
	ds_list_add(opts5, "calloc");
	ds_list_add(opts5, "free");
	ds_list_add(opts5, "realloc");
	ds_map_add(q5, "options", opts5);
	ds_map_add(q5, "correct", 0);
	ds_map_add(q5, "not_appear", false);
	ds_list_add(questions, q5);

	// Pregunta 6
	var q6 = ds_map_create();
	ds_map_add(q6, "text", "Que funcion asigna memoria inicializada en 0?");
	var opts6 = ds_list_create();
	ds_list_add(opts6, "malloc");
	ds_list_add(opts6, "calloc"); // correcta
	ds_list_add(opts6, "realloc");
	ds_list_add(opts6, "free");
	ds_map_add(q6, "options", opts6);
	ds_map_add(q6, "correct", 1);
	ds_map_add(q6, "not_appear", false);
	ds_list_add(questions, q6);

	// Pregunta 7
	var q7 = ds_map_create();
	ds_map_add(q7, "text", "Que funcion cambia el tamano de un bloque de memoria existente?");
	var opts7 = ds_list_create();
	ds_list_add(opts7, "calloc");
	ds_list_add(opts7, "realloc"); // correcta
	ds_list_add(opts7, "malloc");
	ds_list_add(opts7, "free");
	ds_map_add(q7, "options", opts7);
	ds_map_add(q7, "correct", 1);
	ds_map_add(q7, "not_appear", false);
	ds_list_add(questions, q7);

	// Pregunta 8
	var q8 = ds_map_create();
	ds_map_add(q8, "text", "Como liberar memoria apuntada por ptr?");
	var opts8 = ds_list_create();
	ds_list_add(opts8, "malloc");
	ds_list_add(opts8, "realloc");
	ds_list_add(opts8, "free"); // correcta
	ds_list_add(opts8, "calloc");
	ds_map_add(q8, "options", opts8);
	ds_map_add(q8, "correct", 2);
	ds_map_add(q8, "not_appear", false);
	ds_list_add(questions, q8);

	// Pregunta 9
	var q9 = ds_map_create();
	ds_map_add(q9, "text", "Como asignar memoria para una struct?");
	var opts9 = ds_list_create();
	ds_list_add(opts9, "malloc"); // correcta
	ds_list_add(opts9, "free");
	ds_list_add(opts9, "realloc");
	ds_list_add(opts9, "calloc");
	ds_map_add(q9, "options", opts9);
	ds_map_add(q9, "correct", 0);
	ds_map_add(q9, "not_appear", false);
	ds_list_add(questions, q9);

	// Pregunta 10
	var q10 = ds_map_create();
	ds_map_add(q10, "text", "Que pasa si accedes a *ptr despues de free(ptr)?");
	var opts10 = ds_list_create();
	ds_list_add(opts10, "ok");
	ds_list_add(opts10, "malloc");
	ds_list_add(opts10, "NULL");
	ds_list_add(opts10, "error"); // correcta
	ds_map_add(q10, "options", opts10);
	ds_map_add(q10, "correct", 3);
	ds_map_add(q10, "not_appear", false);
	ds_list_add(questions, q10);

	// Pregunta 11
	var q11 = ds_map_create();
	ds_map_add(q11, "text", "Que causa hacer free(ptr) dos veces?");
	var opts11 = ds_list_create();
	ds_list_add(opts11, "malloc");
	ds_list_add(opts11, "ok");
	ds_list_add(opts11, "error"); // correcta
	ds_list_add(opts11, "fuga");
	ds_map_add(q11, "options", opts11);
	ds_map_add(q11, "correct", 2);
	ds_map_add(q11, "not_appear", false);
	ds_list_add(questions, q11);

	// Pregunta 12
	var q12 = ds_map_create();
	ds_map_add(q12, "text", "Tienes un bloque de memoria asignado y quieres duplicar su tamano; que funcion usar?");
	var opts12 = ds_list_create();
	ds_list_add(opts12, "malloc");
	ds_list_add(opts12, "realloc"); // correcta
	ds_list_add(opts12, "calloc");
	ds_list_add(opts12, "free");
	ds_map_add(q12, "options", opts12);
	ds_map_add(q12, "correct", 1);
	ds_map_add(q12, "not_appear", false);
	ds_list_add(questions, q12);

	// Pregunta 13
	var q13 = ds_map_create();
	ds_map_add(q13, "text", "Llamas realloc(ptr,0); que pasa con ptr?");
	var opts13 = ds_list_create();
	ds_list_add(opts13, "free");
	ds_list_add(opts13, "ptr");
	ds_list_add(opts13, "NULL"); // correcta
	ds_list_add(opts13, "error");
	ds_map_add(q13, "options", opts13);
	ds_map_add(q13, "correct", 2);
	ds_map_add(q13, "not_appear", false);
	ds_list_add(questions, q13);

	// Pregunta 14
	var q14 = ds_map_create();
	ds_map_add(q14, "text", "Inicializar ptr=NULL despues de free(ptr) es seguro?");
	var opts14 = ds_list_create();
	ds_list_add(opts14, "ok");
	ds_list_add(opts14, "error");
	ds_list_add(opts14, "si"); // correcta
	ds_list_add(opts14, "no");
	ds_map_add(q14, "options", opts14);
	ds_map_add(q14, "correct", 2);
	ds_map_add(q14, "not_appear", false);
	ds_list_add(questions, q14);

	// Pregunta 15
	var q15 = ds_map_create();
	ds_map_add(q15, "text", "Cual es el riesgo de olvidar liberar memoria de una struct dinamica?");
	var opts15 = ds_list_create();
	ds_list_add(opts15, "ok");
	ds_list_add(opts15, "error");
	ds_list_add(opts15, "fuga"); // correcta
	ds_list_add(opts15, "NULL");
	ds_map_add(q15, "options", opts15);
	ds_map_add(q15, "correct", 2);
	ds_map_add(q15, "not_appear", false);
	ds_list_add(questions, q15);

}


 
