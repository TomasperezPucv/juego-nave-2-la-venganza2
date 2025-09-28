with (other) instance_destroy();
//va la logica si esta bien o mal
if(es_correcta){
	global.puntos+=100;
	instance_create_layer(x,y,"ui",obj_response_good);
}else{
	global.salud--;
	global.puntos-=50;
	instance_create_layer(x,y,"ui",obj_response_bad);
}


with(obj_alternativa){
	instance_destroy();
}

with(obj_enunciado){
	destruir= true
}
instance_destroy();