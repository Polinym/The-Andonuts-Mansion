x = view_xview + 8; y = view_yview;
draw_set_color(c_white);
draw_set_font(font);
if (name == "") {draw_set_color(c_yellow);}
draw_txt(x, y, name + txt);
draw_set_color(c_gray);
draw_txt(x+224, y+16, txt_wait);
draw_set_color(c_white);