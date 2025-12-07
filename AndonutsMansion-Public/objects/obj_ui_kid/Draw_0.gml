x = view_xview + 80; y = view_yview + 160;
draw_set_color(c_white);
draw_set_font(font_wnd);
draw_txt(x, y, txt_wnd);
draw_set_font(font);
draw_txt(x+16, y+8, txt);
var txt2 = "";
for (var i = 0; i < 3; i++)
{
	if (obj_ram.locked[i])
	{
		txt2 += names[i];
	}
	txt2 += "#";
}
draw_set_color(c_gray);
draw_txt(x+16, y+8, txt2);
draw_set_color(c_white);
if (not done) {draw_sprite(spr_cursor, ani_frame, x+8, y+8+(pos*16));}