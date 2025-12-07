switch (state)
{
	case 0:
		if (x_offset < 0) {x_offset += 16;}
		else
		{
			state++;	
		}
		//if (image_alpha < 1) {image_alpha += fade_speed;}
		//else {room_goto(obj_ram.dest); state = 1;}
		break;
	case 1:
		if (wait_count < wait_wait) {wait_count++;}
		else
		{
			state++;
			wait_count = 0;	
			obj_ui.cover = false;
			scr_msg_clear();
			obj_ram.fow = fow;
			with (obj_ram)
			{
				cuts_actors = 0;
				if (show_player_again)
				{
					scr_flag_unset(9);	
					show_player_again = false;
				}
			}
			room_goto(obj_ram.dest);
		}
		//if (image_alpha > 0) {image_alpha += -fade_speed;}
		//else {instance_destroy();}
		break;
	case 2:
		if (x_offset < 256) {x_offset += 16;}
		else
		{
			instance_destroy();	
		}
		break;
}