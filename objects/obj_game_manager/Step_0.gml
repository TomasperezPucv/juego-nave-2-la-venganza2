
if(setup == false){
	setup = true;
	switch(global.current_level){
	case 1:
	//el problema es esto
		
		getionador_de_preguntas = instance_create_layer(x+10,y,"Instances",obj_preguntas_nv1);
	break;
	
	case 2:
		
		getionador_de_preguntas = instance_create_layer(x+10,y,"Instances",obj_preguntas_nv2);
	break
	
	case 3:
		
		getionador_de_preguntas = instance_create_layer(x+10,y,"Instances",obj_preguntas_nv3);
	break


}
}

if((global.salud<=0)/*||(getionador_de_preguntas.nivel_completado == true)*/)
{
	log_event("Acaba de perder el juego",global.current_level,global.puntos);
	game_end()}

