with (other) instance_destroy();
//va la logica si esta bien o mal
if(es_correcta){
	global.salud++
	global.puntos+=100;
}else{
	global.salud--;
	global.puntos-=50;
}


with(obj_alternativa){
	instance_destroy();
}

with(obj_enunciado){
	destruir= true
}
instance_destroy();