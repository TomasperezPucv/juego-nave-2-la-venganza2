//escala para agrandar
menu_scale = 3; 
global.current_level =1;

width = 64;
height = 104;
global.faseactual = levelphase.ETAPANORMAL;
global.cinematicaprejefe = false;
op_border = 8;
op_space = 16;

pos = 0;
// primer numero sub menu del primer numero
//pause menu
options[0,0] = "Comenzar juego (desde nivel 1)";
options[0,1] = "Configuraciones juego";
options[0,2] = "Seleccionar nivel";
options[0,3] = "Salir del juego";

//settings menu
options[1,0] = "Screen size";
options[1,1] = "Probar sistema de texto";
options[1,2] = "Volume";
options[1,3] = "Regresar";

//menu de seleccion de niveles
options[3,0]= "Nivel 1";
options[3,1]= "Nivel 2";
options[3,2]= "Nivel 3";
options[3,3]= "Regresar";

op_lenght = 0;
menu_level = 0;

//setup relacionado con los logs
//global.playerID = irandom_range(10000,99999);


ini_open("logdata.ini");
ini_write_string("datos","ID",global.playerID);
ini_close()
log_event("comenzo el juego",0,0);


