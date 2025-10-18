segundos = global.tiempo_para_responder;

var minutos = floor(segundos/60);
var segs = segundos mod 60;

var texto = string_format(minutos,2,0)+ ":"+ string_format(segs, 2, 0);

var _color = mucho_tiempo;

if((minutos<=0)&&(segs<=5)) _color = poco_tiempo;

draw_sprite_ext(sprite_index,image_index,x+10,y,width/sprite_width,heigh/sprite_height,0,_color,1);
//dibujar texto

draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

var _c = _color;
draw_text_transformed_color(x+border*scale+10,y+border*scale ,contador,scale,scale,0, _c,_c,_c,_c,1);

//dibujar texto
draw_text_transformed_color(x+border*scale+10,y+border*scale+line_sep*scale+string_height(texto) ,texto,scale,scale,0, _c,_c,_c,_c,1);
