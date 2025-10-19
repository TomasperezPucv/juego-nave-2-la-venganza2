#macro LOG_FILE_NAME "game_log.csv"

/// @function get_timestamp()
/// @description Devuelve la fecha y hora actual como un string.
function get_timestamp() {
    var _date = date_current_datetime();
    // Formato: "AAAA-MM-DD HH:MM:SS"
    return date_datetime_string(_date);
}

/// @function log_event(_event_name, _session_rounds, _session_score)
/// @description Escribe una nueva línea de datos en el archivo de log.
/// @param {string} _event_name El nombre del evento (ej: "Game_Over").
/// @param {real} _current_level el nivel en el que se encuentra actualmente.
/// @param {real} _current_level_score El puntaje del nivel actual.
function log_event(_event_name, _current_level, _current_level_score) {
    
    //Revisa si el archivo existe para escribir los encabezado
    if (!file_exists(LOG_FILE_NAME)) {
        var _file = file_text_open_write(LOG_FILE_NAME);
        if (_file == -1) { exit; } // No se pudo crear el archivo
        
        // Escribe la primera línea (encabezados del CSV)
        var _headers = "TimeStamp,PlayerID,evento,puntajeactual,pregunta,alternativa,correcto o no";
		file_text_write_string(_file, _headers);
		file_text_writeln(_file);               
		file_text_close(_file);
    }
    
    var _file = file_text_open_append(LOG_FILE_NAME);
    if (_file == -1) { exit; } // No se pudo abrir el archivo

    var _stamp = get_timestamp();
	var _player = string(global.playerID);
    
	
	
    // Construye la línea del CSV
    var _log_line = "";
    _log_line += string(_stamp) + ",";
    _log_line += string(_player) + ",";
    _log_line += string(_event_name) + ",";
    _log_line += string(_current_level_score) + ",";  
	
	if(argument_count>3){
		var _pregunta_actual = argument[3];
		var _alternativa_seleccionada = argument[4];
		var _es_correcto = argument[5];
		_log_line += string(_pregunta_actual) + ",";
		_log_line += string(_alternativa_seleccionada) + ",";
		_log_line += string(_es_correcto) + ",";
		
	
	}

    // Escribe la línea en el archivo y se cierra
    file_text_write_string(_file, _log_line); // Escribe el texto
	file_text_writeln(_file);               // Escribe el salto de línea
	file_text_close(_file);
}