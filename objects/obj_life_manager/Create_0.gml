//var instance_array[10]; // Tamaño de 10 (puedes ajustar el tamaño)
/*
// Crear una instancia y añadirla al array
instance_array[0] = instance_create_layer(100, 100, "InstancesLayer", obj_mi_objeto);

// Acceder a una instancia
var some_instance = instance_array[0];*/

corazones[1] = instance_create_layer(x+10,y+38,  "UI", obj_heart);
corazones[2] = instance_create_layer(x+46,y+38,  "UI", obj_heart);
corazones[3] = instance_create_layer(x+84,y+38,  "UI", obj_heart);
salud_actual = global.salud;
