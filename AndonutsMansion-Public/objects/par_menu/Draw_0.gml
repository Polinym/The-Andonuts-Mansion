var tmp_x = view_xview+offset_x + move_x; var tmp_y = view_yview+offset_y + move_y;
x = tmp_x; y = tmp_y;
draw_set_font(font_wnd);
draw_set_halign(fa_center);
draw_txt(tmp_x+box_x, tmp_y, txt_wnd);
draw_set_halign(fa_left);
var width = (w*8)+16;
var height = (h*16)+16;
var tmp_w = (dsp_w*8)+16;
var gx = tmp_x + (box_x -  (tmp_w/2)+3);
var gx2 = (tmp_x + box_x + (tmp_w/2)-4);
draw_rectangle_color(gx, tmp_y+3, gx2,  (tmp_y+height)-3, tl, tr, br, bl, false); 

if (display)
{
	draw_set_font(font);
	if (title != "")
	{
		draw_txt(tmp_x+tx, tmp_y+ty, title);	
	}
	draw_txt(tmp_x+16 + txt_offset_x, tmp_y+8 + txt_offset_y, txt);
	if (layer_gray)
	{
		draw_set_color(c_gray);
		draw_txt(tmp_x+16, tmp_y+8, txt2);
		draw_set_color(c_white);
	}
	if (cursor)
	{draw_sprite(spr_menu_cursor, ani_frame, tmp_x+8, tmp_y+16+(16*pos));}
	if (pages > 0)
	{
		tmp_y += (h*16);
		if (page > 0) 
		{
			draw_sprite(spr_menu_cursor2, 0, tmp_x+8, tmp_y);
		}
		if (page < pages)
		{
			draw_sprite(spr_menu_cursor, 0, tmp_x+(w*8), tmp_y);
		}
	}
}