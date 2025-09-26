// Llama randomize al inicio para inicializar los números aleatorios
randomize();


function aleatorio_hasta(n) {
    return irandom(n); 
}

function seleccionar_pregunta() {
    var pregunta_seleccionada = noone;
    var preguntas_no_aparecidas = ds_list_create();

    // Recorrer todas las preguntas en la lista
    for (var i = 0; i < ds_list_size(questions); i++) {
        var pregunta = ds_list_find_value(questions, i);

        // Verificar si la pregunta no ha sido seleccionada aún
        if (!ds_map_find_value(pregunta, "not_appear")) {
            // Si no ha aparecido, agregarla a la lista de preguntas no aparecidas
            ds_list_add(preguntas_no_aparecidas, pregunta);
        }
    }

    // Si hay preguntas no aparecidas, seleccionar una aleatoria
    if (ds_list_size(preguntas_no_aparecidas) > 0) {
        var random_index = irandom(ds_list_size(preguntas_no_aparecidas) - 1);
        pregunta_seleccionada = ds_list_find_value(preguntas_no_aparecidas, random_index);

        // Marcar la pregunta como ya aparecida
        ds_map_replace(pregunta_seleccionada, "not_appear", true);
    }

    // Si todas las preguntas han aparecido, retornar noone
    ds_list_destroy(preguntas_no_aparecidas);

    return pregunta_seleccionada;
}