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
		
		
	}

}