draw_set_halign(fa_center);
scr_drawTxt(txt);
draw_set_halign(fa_left);

var height = (16*3)+16;
var tmp_w = (width*8)+16;
var gx = x - (tmp_w/2)+3;
var gx2 = x + (tmp_w/2)-4;
draw_rectangle_color(gx, y+3, gx2,  (y+height)-3, tl, tr, br, bl, false); 