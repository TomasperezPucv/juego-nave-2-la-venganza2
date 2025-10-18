if((instance_exists(obj_contact_block)==false)&&(mensaje_creado ==true)){
	switch(global.current_level){
		case 1:
			
			if(global.faseactual==levelphase.ETAPANORMAL){
				with(instance_create_layer(96,0,"text_check",obj_contact_block)){
					text_id = other.ids_de_cinematica[0,0];
				}
			}else{
				
				with(instance_create_layer(96,0,"text_check",obj_contact_block)){
					text_id = other.ids_de_cinematica[0,1];
				}
				
			}
			mensaje_creado = false;
		break;
		
		default:
			show_debug_message("cago asadasda");
		break;
	
	}
}