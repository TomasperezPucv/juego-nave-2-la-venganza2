function crearLog(){
	var archivo;
	archivo = file_text_open_append("datos.txt");
	
	file_text_write_string(archivo, string (global.puntos));
	file_text_writeln(archivo);
	file_text_close(archivo);
	
}