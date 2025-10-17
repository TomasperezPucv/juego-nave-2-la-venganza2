if((instance_exists(obj_contact_block)==false)&&(mensaje_creado ==true)){
	switch(global.current_level){
		case 1:
			with(instance_create_layer(96,0,"text_check",obj_contact_block)){
				text_id = other.ids_de_cinematica[0];
			}
			mensaje_creado = false;
		break;
	
	}
}