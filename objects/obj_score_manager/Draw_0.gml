puntos = string(global.puntos);
draw_sprite_ext(sprite_index,image_index,x,y,width/sprite_width,heigh/sprite_height,0,c_white,1);
//dibujar texto

draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

var _c = c_lime;
draw_text_transformed_color(x+border*scale,y+border*scale ,texto,scale,scale,0, _c,_c,_c,_c,1);

//dibujar texto
draw_text_transformed_color(x+border*scale,y+border*scale+line_sep*scale+string_height(texto) ,puntos,scale,scale,0, _c,_c,_c,_c,1);
