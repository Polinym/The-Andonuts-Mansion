switch (room)
{
	case rm_title:
	case rm_kids:
	case rm_go:
	case rm_end:
	case rm_save:
	case rm_ini:
		break;
	default:
		x = view_xview; y = view_yview-4; 
		draw_set_color(c_black);
		if (shade)
		{
			draw_set_alpha(0.5);
			draw_rectangle(x, y, x+256, y+224, false);
		}

		if (dsp_cover > 0) 
		{
			draw_set_alpha(dsp_cover);
			draw_rectangle(x, y, x+256, y+224, false);
		}
		draw_set_alpha(1);

		if (fow)
		{
			if (obj_ram.flashlight)
			{
				with (obj_player)
				{
					if (not instance_exists(obj_warp))
					{
						scr_plr_draw();
					}
				}
				draw_sprite(spr_flashlight, 0, obj_player.x, obj_player.y);
			}
			else
			{
				draw_rectangle(x, y, x+256, y+224, false);
				with (obj_player)
				{
					if (not instance_exists(obj_warp))
					{
						scr_plr_draw();
					}
				}
			}
		}


		var tmp_x = x+256;
		draw_rectangle(x, y, tmp_x, y+32+4, false);
		var tmp_y = y+160;
		draw_rectangle(x, tmp_y, tmp_x, tmp_y+80, false);
		draw_set_color(c_white);

		if not (obj_ram.cuts)
		{
		draw_set_color(c_yellow);
		draw_set_font(font);

		tmp_x = x+8;
		var tmp_name = name;
		if (hide_name) {tmp_name = "";}
		draw_txt(tmp_x, tmp_y, prefix + tmp_name);

		if (state == 0) {var tmp_color = c_gray;}
		else {var tmp_color = c_white;}
		draw_set_color(tmp_color);
		tmp_y += 16; 
		draw_txt(tmp_x, tmp_y, cmds[0]);
		if (actor == -1)
		{
			draw_set_color(c_gray);
			draw_txt(tmp_x, tmp_y, cmds[0]);
			draw_set_color(tmp_color);
		}

		tmp_x += 32;
		draw_txt(tmp_x, tmp_y, cmds[1]);
		if (actor == -1)
		{
			draw_set_color(c_gray);
			draw_txt(tmp_x, tmp_y, "#Use");
			draw_set_color(tmp_color);
		}
		if (obj_ram.no_new_kid)
		{
			draw_set_color(c_gray);
			draw_txt(tmp_x, tmp_y, "##New Kid");
		}

		draw_set_color(c_white);

		tmp_x = x;
		if (state == 1)
		{
			draw_sprite(spr_cursor, ani_frame, tmp_x+(x_pos*32), tmp_y+(y_pos*16));
		}

		tmp_x += 180+16;  tmp_y += -16;
		draw_set_font(font_wnd);
		draw_txt(tmp_x, tmp_y, txt_wnd);
		tmp_y += 8; tmp_x += 8;
		draw_set_font(font);
		//draw_txt(tmp_x, tmp_y, char.name + "#HP: " + string(char.hp));
		draw_txt(tmp_x, tmp_y, char.name);
		
		draw_set_color(c_gray);
		draw_txt(tmp_x, tmp_y+24, "Save - Z");
		draw_set_color(c_white);
		if (obj_ram.seconds > -1)
		{
			draw_set_color(c_red);
			draw_txt(tmp_x, tmp_y+40, scr_get_time());
			draw_set_color(c_white);
		}
		}
		break;
}