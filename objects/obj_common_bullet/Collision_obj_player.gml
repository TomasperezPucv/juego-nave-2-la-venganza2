instance_destroy();
if(enemigo){
	global.salud--;
	instance_create_layer(x,y,"ui",obj_response_bad);
	}
//xd