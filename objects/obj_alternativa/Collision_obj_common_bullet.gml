with (other) instance_destroy();
//va la logica si esta bien o mal
if(es_correcta){
	global.salud++
}else{
	global.salud--;
}


with(obj_alternativa){
	instance_destroy();
}

with(obj_enunciado){
	destruir= true
}
instance_destroy();