//especificaciones de la jugabilidad
option_index = 0; // asignado por qmanager
shoot_cooldown = 0;
shoot_rate = 30;
option_text = "test text";
es_correcta =false;

//aca se manejara la direccion aleatoria

angulo = irandom(360);

speed_x = sin(degtorad(angulo));
speed_y = cos(degtorad(angulo));


border_l =192;
border_r = 830;
aparicion = true; //esto es para que aparzca del lado y ahi recien colisiones
//especificaciones para el drwa
width =64;
heigh = 64
border = 5;
scale =2;

can_shoot =true;

disparar = function(){
	var n = random(1);
	
	if(n < 0.1){
		var bala = instance_create_layer(x,y+32,"bullets",obj_common_bullet);
		bala.enemigo = true;
		bala.angulo =pi/2;
	}

}

destruccion = function(){
	with(obj_common_bullet) instance_destroy();
	//va la logica si esta bien o mal
	if(es_correcta){
		global.puntos+=100;
		global.respuestas_correctas++;
		instance_create_layer(x,y,"ui",obj_response_good);
	}else{
		global.salud--;
		global.puntos-=50;
		instance_create_layer(x,y,"ui",obj_response_bad);
	}
	
	var enun; 
	with(obj_enunciado){
		enun = texto;
	}
	
	log_event("selecciono alternativa",3,global.puntos,enun,option_text,es_correcta);


	with(obj_alternativa_nv3){
		instance_destroy();
	}

	with(obj_enunciado){
		destruir= true
	}
	instance_destroy();
	global.nextquestion = true;
	
}




