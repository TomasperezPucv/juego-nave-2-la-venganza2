if(tiempo_de_advertencia <=0){
	advertir = false;
}else{
	tiempo_de_advertencia--;
}

if(!advertir){
	y+=yvel;
}

if(y>room_height){
	instance_destroy();

}