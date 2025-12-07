switch (room)
{
	case rm_title: break;
	case rm_kids: break;
	case rm_go: break;
	case rm_end: break;
	case rm_save: break;
	case rm_ini: break;
	default:
		if not (obj_ram.cuts)
		{
		x = view_xview + 88; y = view_yview + 172;
		draw_set_font(font);
		if (not active) {draw_set_alpha(0.5);}
		draw_set_color(c_yellow);
		draw_txt(x+8, y, txt);
		if (active) 
		{
			draw_sprite(spr_cursor, ani_frame, x, y+(pos*16));
		}
		if (page > 0) {draw_sprite(spr_cursor_left, ani_frame, x-8, y+32);}
		if (page < last_page) {draw_sprite(spr_cursor_right, ani_frame, x+80, y+32);}
		draw_set_alpha(1);
		draw_set_color(c_white);
		}
		break;
}