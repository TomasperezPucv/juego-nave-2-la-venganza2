//no tocar
function scr_set_defaults_for_text(){ 
	line_break_pos[0,page_number] = 999;
	line_break_num[page_number] = 0;
	line_break_offset[page_number]=0;
	
	//variables para cada caracter/letra
	for(var c=0; c<1000;c++){
		col_1[c,page_number] = c_white;
		col_2[c,page_number] = c_white;
		col_3[c,page_number] = c_white;
		col_4[c,page_number] = c_white;
		
		float_text[c,page_number] =0;
		float_dir[c,page_number]=c*30;
		
		shake_text[c,page_number] =0;
		shake_dir[c,page_number]=irandom(360);
		shake_timer[c,page_number] =irandom(4);
	}
	
	txtb_spr[page_number] = spr_dialog_box;
	speaker_sprite[page_number] = noone;
	speaker_side[page_number] =1;
	
	//PARA AUDIO
	snd[page_number] = snd_voice_default;
	
	
}

//---------------text Vfx--------------------

//color a las letras
function scr_text_color(_start,_end,_col1,_col2,_col3,_col4){

	for(var c =_start; c<=_end; c++){
		col_1[c,page_number-1] = _col1;
		col_2[c,page_number-1] = _col2;
		col_3[c,page_number-1] = _col3;
		col_4[c,page_number-1] = _col4;
	}

}

//la letra se mueva ondular
function scr_text_float(_start,_end){
	for(var c = _start; c<=_end;c++){
		float_text[c,page_number-1]=true;
		
	}
}

//texto se ajita 
function scr_text_shake(_start,_end){
	for(var c = _start; c<=_end;c++){
		shake_text[c,page_number-1]=true;
		
	}
}

//importante unico que puedo modificar
//@param text
//@param [character]
//@param [side]
function scr_text(_text){
	scr_set_defaults_for_text();
	//se le entrega obligatoria, el texto y opcionalmente el argumento (player y player 2)
	text[page_number] = _text;
	
	//get character info ojo con los personajes de el juego en cuestion
	if(argument_count>1){
		switch(argument[1]){
			case "player":
				speaker_sprite[page_number] = spr_player_portrait_speaking;
				txtb_spr[page_number] = spr_dialog_box;
				snd[page_number] = snd_voice_default;
			break;
			
			case "helper":
				speaker_sprite[page_number] = spr_helper_portrait_speaker;
				txtb_spr[page_number] = spr_dialog_helper_box;
				snd[page_number] = snd_voice_default;
			break;
			//ejemmplo case 3 "enemigo"
			// speaker sprite imagen del personaje
			//textbot spri dibujo del recuadro
			//snd sonido para poner a los personajes
			case "jefe1":
				speaker_sprite[page_number] = spr_jefe1;
				txtb_spr[page_number] = spr_dialog_jefe1
				snd[page_number] = snd_voice_default;
			break;
		
		
		}
		
	}
	//selecionar en que lado esta el persoaje 
	if(argument_count>2){
		speaker_side[page_number]=argument[2]
	}
	
	page_number++;
	
}
  
//@param text_id
function create_textbox(_text_id){
	with(instance_create_depth(0,0,-9999, obj_textbox)){
		scr_game_text(_text_id);
	
	}
	
}



//@param option 
//@param link_id

function scr_option(_option, _link_id){
	option[option_number] =_option;
	option_link_id[option_number] = _link_id;
	option_number++;

}