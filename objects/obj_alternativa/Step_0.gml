y += speed_y;
if(y+speed_y > room_height){
	instance_create_layer(x,y,"ui",obj_response_bad);
	
	with(obj_enunciado){
		global.salud--;
		instance_destroy();
	}
	
	instance_destroy();
}