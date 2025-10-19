//@param text_id
//todo el dialogo
//estructura src_text("dialogo","nombre",opcional -1 o nada siendo -1 para colocarlo en la derecha)
//src_text-color(primer caracter, hasta x caracter, color 1, etc ...)
//src_text floar(caracter inicial, caracter final) efecto del dialogo para flotar
//src_options (texto de la opcion, id)
function scr_game_text(_text_id){

	switch(_text_id){
		case "Test001":
			scr_text("mucho gusto en conocerte, hola :D.","helper",-1);
				scr_text_color(26,33,c_yellow,c_yellow,c_white,c_white);
				scr_text_float(0,10);
			scr_text("jamas habia conocido a nadie como tu","helper",-1);
			scr_text("lamento aparecer de la nada, pero queria unirme a la mision de hoy","player");
				scr_text_float(0,12);
			scr_text("queria preguntarte algo desde hace rato....","helper",-1);
			scr_text("dime","player");
			scr_text("te sientes preparado para esta mision?","helper",-1);
				scr_option("SI", "Test002");
				scr_option("...", "Test003");
				break;
			case "Test002":
			scr_text("porsupuesto que estoy preparado... tengo que hacerlo...","player");
			break;
			case "Test003":
			scr_text("entiendo que te sientas asi, esta mision no es facil de completar","helper" ,-1);
			break;	
		case "introduccion":
			scr_text("hola, hola?... cambio..","player");
			scr_text("Muy buenas agente 4, un gusto tenerte aca. todo va bien por alla?","helper",-1);
			scr_text("asi es, todo en orden... por ahora.","player");
			scr_text("En ese caso preparate, los primeros estan a punto de llegar hacia ti","helper",-1);
			scr_text("QUE, ya mismo??","player");
			scr_text("lamentablemente si, pero no te preocupes, tu nave esta preparada para poder defenderte, nesesitas una explicacion de como puedes hacerlo?","helper",-1);
			scr_option("SI", "preparado");
			scr_option("NO", "no preparado");
			break;
				case "preparado":
				scr_text("no me lo esperaba de ti, pero veo que estas decidido en cumplir esta mision.","helper" ,-1);
				scr_text("En ese caso","helper" ,-1);
				scr_text("VAMOS!!!!!","helper" ,-1);
				scr_option("VAMOS", "comenzarnivel1");
				scr_option("ahora que lo mencionas...","no preparado")
				break;
					case "comenzarnivel1":
					scr_text("","helper" ,-1);
					transicionar_a_nivel(1);
					break;
				case  "no preparado":
				scr_text("ya veo. no te procupes, aun tenemos tiempo para explicarte como funcionan las cosas aca","helper" ,-1);
				break;
		case "pre first boss":
			scr_text("impresionante, lo has conseguido exitosamente, bien hecho agente 4","helper",-1);
			scr_text("gracias, crei que seria mas dificil, pero no tuve problemas","player");
			scr_text("...","helper",-1);
			scr_text("!!!","helper",-1);
			scr_text("Que pasa, ocurre algo?","player");
			scr_text("parece que viene tu primer contrincante mas fuerte que los demas, y parece que no lo podras atacar directamente","helper",-1);
			scr_text("y como se supone que lo tenga que vencer?","player");
			scr_text("tu contrincante se ve invulnerable pero es debil, solo intenta hacer lo que llevas haciendo hasta ahora","helper",-1);
			scr_text("Te refieres a responder nomas?","player");
				scr_text_color(13,29,c_yellow,c_yellow,c_yellow,c_yellow);
			scr_text("asi es, solo intenta responder 3 pr eguntas correctas seguidas y lo derrotaras","helper",-1);
				scr_text_color(12,60,c_yellow,c_yellow,c_yellow,c_yellow);
			scr_text("lo entiendo....","player");
			scr_option("VAMOS", "comenzarjefe1");
		break;
		case "JefeNivel1" :
			scr_text("WUAJAJAJA, pensaste que seria tan facil?", "jefe1",-1);
			scr_text_shake(0,9);
			scr_text("Aqui es donde termina el tutorial programador", "jefe1",-1);
			scr_text("El hecho que respondieras 10 preguntas de manera correcta tuvo que haber sido suerte","jefe1",-1);
			scr_text("No fue suerte BOSS, tengo conianza en mis conocimientos","player");
			scr_text("Entonces conoceras la diferencia entre *Valor y la **Dirrecion en memoria?","jefe1",-1);
			 	scr_option("En efecto ,con quien crees que te vas a enfrentar","Opcion_Conf_1" );
				scr_option("Tienes razon , todavia no lo comprendo a su totalidad","Opcion_Rea_1");
			break;
			case "Opcion_Conf_1" :
				scr_text("La direccion de x no entrega el valor de 'x'.","player");
				scr_text("CORRECTO, Esa es la Determinacion que estaba esperando de ti Jugador!","jefe1",-1);
				scr_text_float(0,9);
				scr_text("QUE EMPIEZE EL COMBATE","jefe1",-1);
				scr_text_shake(0,22);
				scr_text("ATENCION ATENCION! Se ha detectado el enfrentamiendo al Jefe del Nivel 1","helper",-1);
				scr_text_shake(0,18);
				scr_text ("Concentrate. Tienes que encadenar 3 respuestas correctas. Un fallo significa volver a empezar la racha.","helper",-1);
					scr_option("Dejamelo a mi","comenzarjefe1");
					scr_option("Tengo miedo pero lo superare","comenzarjefe1");
			break;
			case "Opcion_Rea_1" :
				scr_text("Que debil, este nivel de determinacion no lo esperaba de ti Jugador","jefe1",-1);
				scr_text("Tu comprension es la única herramienta, aferrate a ella y DERROTAME","jefe1",-1);
				scr_text("ATENCION ATENCION! Se ha detectado el enfrentamiendo al Jefe del Nivel 1","helper",-1);
				scr_text ("Concentrate. Tienes que encadenar 3 respuestas correctas. Un fallo significa volver a empezar la racha.","helper",-1);
					scr_option("Tendre que concentrarme, DESAFIO ACEPTADO","comenzarjefe1");
					scr_option("Superare mi debilidad","comenzarjefe1");
				break;
			case "comenzarjefe1":
				scr_text("","player");
				transicionar_a_nivel(1);
			break;
			
			case "JefeNivel2" : 
			scr_text("¡Aqui se acaban los FUNDAMENTOS!, Yo como el Maestro de Arreglos sufriras los problemas de la eficiencia","jefe2",-1);
			scr_text("Has demostrado tu conocimiento de manejo de Dirrecion, Me impresionas JOJO","jefe2",-1);
			scr_text_float(70,74);
			scr_text("Gracias Maestro de Arreglos, el camino no ha sido facil","player");
			scr_text("Esto me ha permitido adquirir y probar mis conocimientos","player");
			scr_text("EXCELENTE, esa es la idea","jefe2",-1);
			scr_text_shake(0,9)
			scr_text("BASTA me distraes de mi proposito, Estas Preparado para desafiar al SIGUIENTE NIVEL","jefe2",-1);
			scr_text_shake(68,83);
				scr_option("Por su puesto, Naci listo","Opcion_Conf_2");
				scr_option("No estoy tan seguro, pero es un Desafio que tengo que afrontar","Opcion_Rea_2");
			break;
			
			case "Opcion_Conf_2" : 
				scr_text("Cuanta Confianza y Determinacion, Este desafio sera interesante","jefe2",-1);
				scr_text("Pero cuidado Jugador, que no sera tan facil como BOSS, cuida tu tiempo es preciado JOJOJO","jefe2",-1);
				scr_text("Como que tiempo.... esto no lo vi venir","player");
				scr_text("ATENCION ATENCION! Se ha detectado el enfrentamiendo al Jefe del Nivel 2","helper",-1);
				scr_text_shake(0,16);
				scr_text("Presta Atencion Jugador, en esta fase tendras que responder 5 preguntas de manera correcta en un plazo de 1 minuto","helper",-1);
				scr_text("Y cuidado con equivocarte!","helper",-1);
					scr_option("Vamos a la Accion","comenzarjefe2");
					scr_option("Necesitare concentrame al 100%","comenzarjefe2");
			break;
			case "Opcion_Rea_2" :
				scr_text("Animo Jugador,Ya estas por la mitad confia en tus conocimientos","jefe2",-1);
				scr_text("ATENCION ATENCION! Se ha detectado el enfrentamiendo al Jefe del Nivel 2","helper",-1);
				scr_text_shake(0,16);
				scr_text("Presta Atencion Jugador, en esta fase tendras que responder 5 preguntas de manera correcta en un plazo de 1 minuto","helper",-1);
				scr_text("Y cuidado con equivocarte!","helper",-1);
					scr_option("Tendre que superar esta debilidad","comenzarjefe2");
					scr_option("Tendre que concentrarme para derrotarlo", "comenzarjefe2");
			break;
			case "comenzarjefe2":
				scr_text("","player");
				transicionar_a_nivel(2);
			break;
			
			case "JefeNivel3":
				scr_text("¡Aquí se detiene todo, Jugad! Yo soy el Guardián, y este es el corazón del **Heap** y el juez del **Stack**.", "jefe3",-1);
				scr_text_color(26,34,c_yellow,c_yellow,c_white,c_white); // Destaca **Heap**
		        scr_text_float(0,10);
				scr_text("Has dominado direcciones y arreglos, y te enfrentaste a BOSS y a al Maestro de Arreglos ","jefe3",-1);
				scr_text("Por lo que ya debes conocer todo sobre punteros y dirreciones WUOJOJO","jefe3",-1);
				scr_text("PREPARATE, porque ahora te enfrentaras a la memoria DINAMICA","jefe3",-1);
				scr_text("Asi es Guardian estoy mas que preparado para desafiarte","player");
				scr_text("Tu habilidad debe ser absoluta. ¿Cómo enfrentarás el juicio final de la memoria?","jefe3",-1);
					scr_option("Mi gestión de memoria es impecable, es hora de acabar esto", "Opcion_Conf_3");
					scr_option("La Memoria Dinámica es mi mayor temor, pero la enfrentaré por la disciplina.", "Opcion_Rea_3");
			break;
			
			case "Opcion_Conf_3": 
			scr_text("Ya tengo conocimientos sobre el manejo de funciones para manejar la memoria dinamica, no me das miedo","player");
			scr_text("¡Que determinacion tienes Jugador!, Pero la confianza es el primero error","jefe3",-1);
			scr_text("El reloj no espera y mis preguntas estan diseñadas para provocar fallos criticos","jefe3",-1);
			scr_text("ATENCION ATENCION! Se ha detectado el enfrentamiendo al Jefe del Nivel 3","helper",-1);
				scr_text_shake(0,16);
			scr_text("Jugador en este nivel tienes que responder 10 preguntas de mmanera correcta en un tiempo limite de 1 minuto y 30 segundos","helper",-1);
			scr_text("Una vez que acumules 3 fallos, sufriras un Segmentation faul y tendras un Game Over","helper",-1);
				scr_option("Mi conocimiento es mi escudo. ¡Adelante!","comenzarjefe3");
				scr_option("Venceré el miedo al Segmentation Fault","comenzarjefe3");
				scr_option("Voy por la maestría total.","comenzarjefe3");
			break;
			
			case "Opcion_Rea_3" : 
			scr_text("Hoy conoceras el terror del segmentation fault , estas preparado novato!","jefe3",-1);
			scr_text("Ser honesto no te salvara Jugador, el segmentation faul no perdona errores","jefe3",-1);
			scr_text("ATENCION ATENCION! Se ha detectado el enfrentamiendo al Jefe del Nivel 3","helper",-1);
				scr_text_shake(0,16);
			scr_text("Jugador en este nivel tienes que responder 10 preguntas de mmanera correcta en un tiempo limite de 1 minuto y 30 segundos","helper",-1);
			scr_text("Una vez que acumules 3 fallos, sufriras un Segmentation faul y tendras un Game Over","helper",-1);
				scr_option("Desafío de precisión y resistencia aceptado.","comenzarjefe3");
				scr_option("Venceré el miedo al Segmentation Fault","comenzarjefe3");
			break;
			case "comenzarjefe3":
				scr_text("","player");
				transicionar_a_nivel(3);
			break;
	
	}

}