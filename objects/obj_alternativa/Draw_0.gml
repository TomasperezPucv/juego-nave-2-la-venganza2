var text_w = string_width(option_text);
var text_h = string_height(option_text);
var margin =20;

var scale_x = (text_w + margin) / sprite_width;
var scale_y = (text_h + margin) / sprite_height;

// Dibujar sprite escalado manualmente
draw_sprite_ext(sprite_index, image_index, x, y,
                scale_x, scale_y, image_angle,
                c_white, image_alpha);

// Dibujar texto encima
draw_set_color(c_white);
draw_set_font(fnt_test);
draw_text(x - text_w/2, y - text_h/2, option_text);