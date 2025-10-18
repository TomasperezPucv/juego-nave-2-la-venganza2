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
			
				
	
	}

}