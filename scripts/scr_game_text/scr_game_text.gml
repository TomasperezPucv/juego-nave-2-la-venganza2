//@param text_id
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
			scr_text("lamentablemente si, pero no te preocupes, tu nave esta preparada para poder defenderte, nesesitas una explicacion de como puedes hacer esto?.","helper",-1);
			scr_option("SI", "preparado");
			scr_option("NO", "no preparado");
			break;
			case "preparado":
			scr_text("no me lo esperaba de ti, pero veo que estas decidido en cumplir esta mision.","helper" ,-1);
			scr_text("En ese caso","helper" ,-1);
			scr_text("VAMOS!!!!!","helper" ,-1);
			transicionar_a_nivel(1);
			break;
			case  "no preparado":
			scr_text("ya veo. no te procupes, aun tenemos tiempo para explicarte como funcionan las cosas aca","helper" ,-1);
			break;	
	}

}