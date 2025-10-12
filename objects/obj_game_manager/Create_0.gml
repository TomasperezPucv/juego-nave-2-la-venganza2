getionador_de_preguntas = noone;
switch(global.current_level){
	case 1:
		getionador_de_preguntas = instance_create_layer(x+10,y,"Instances",obj_preguntas_nv1);
	break;
	
	case 2:
		getionador_de_preguntas = instance_create_layer(x+10,y,"Instances",obj_preguntas_nv2);
	break


}


animacion_de_entrada= layer_sequence_create("Instances",room_width/2,room_height/2, seq_intro);
