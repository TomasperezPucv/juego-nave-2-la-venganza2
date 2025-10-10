//adaptar el tamano del menu dinanicamente
var new_width =0;
var line_height = string_height(options[0,0])*menu_scale;

for(var i =0 ; i<op_lenght; i++){
	var option_width = string_width(options[menu_level,i])*menu_scale;
	new_width = max(option_width, new_width);
}

width = new_width + op_border * 2 * menu_scale;
height = op_border * 2 * menu_scale + line_height + (op_lenght - 1) * op_space * menu_scale;


//centralizar el menu
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2 - width / 2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2 - height / 2;

//dibujar el fondo del menu
draw_sprite_ext(sprite_index, image_index, x,y, width/sprite_width, height/sprite_height,0,c_white,1);


//dibujar las opciones
draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for(var i =0; i< op_lenght; i++){
	
	var _c = c_white;
	if(pos == i){
		_c = c_yellow;
	}
	
	draw_text_transformed_color(x+op_border*menu_scale,y+op_border + (op_space*i*menu_scale) ,options[menu_level, i],menu_scale,menu_scale,0, _c,_c,_c,_c,1);
}