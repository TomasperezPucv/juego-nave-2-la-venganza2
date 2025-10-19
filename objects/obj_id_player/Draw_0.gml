draw_set_font(global.font_main); // Usar la fuente definida
draw_set_halign(fa_center);
//draw_set_valign(fa_center);
draw_set_color(c_white);

var new_width = (max(string_width(input_string), string_width("ID del Jugador: ")))*scale;
//var new_height = (string_width(input_string) + string_width("ID del Jugador: "))*scale;
var new_height = (max(string_height(input_string), string_height("ID del Jugador: ")))*scale;

width = (new_width + border*2*scale);
height = (new_height + border*2*scale + op_border);

x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2 - width / 2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2 - height / 2;

draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, (height+op_border)/sprite_height, 0, c_white, 1);

/*
draw_text_transformed_color(x + border*scale, y+border-op_border*scale, "ID del Jugador: ", scale, scale, 0, c_white, c_white, c_white, c_white, 1);
draw_text_transformed_color(x + border*scale, y+border, input_string, scale, scale, 0, c_white, c_white, c_white, c_white, 1);
*/


var text_x = x + width / 2;

draw_text_transformed_color(text_x, y + border*scale - op_border - 5, "ID del Jugador: ", scale, scale, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
draw_text_transformed_color(text_x, y + border*scale + string_height("ID del Jugador: ")*scale - op_border, input_string, scale, scale, 0, c_white, c_white, c_white, c_white, 1);