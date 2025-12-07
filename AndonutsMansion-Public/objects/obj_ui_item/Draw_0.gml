//x = view_xview + 32; y = view_yview + 160;
x = view_xview + 128+64; y = view_yview + 160;
draw_set_font(font_wnd);
draw_set_color(c_white);
draw_txt(x, y, txt_wnd);
draw_set_font(font);
draw_txt(x+16, y+8, txt);
draw_sprite(spr_cursor, ani_frame, x+8, y+8+(pos*16));