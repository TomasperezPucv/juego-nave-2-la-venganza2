

//crear nuevo tamanio segun el texto
var new_width = string_width(option_text)*scale;
var line_height = string_height(option_text)*scale;

//redimensionar
width = (new_width + border*2*scale);
heigh = (line_height + border*2*scale);


//aca se dibuja el fondo
draw_sprite_ext(sprite_index,image_index,x,y,width/sprite_width,heigh/sprite_height,0,c_white,1);

//dibujar el texto

draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

var _c = c_white;
draw_text_transformed_color(x+border*scale,y+border*scale ,option_text,scale,scale,0, _c,_c,_c,_c,1);

