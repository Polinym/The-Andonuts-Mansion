function scr_actor_cuts()
{
	switch (ani_state)
	{
		case "idle":
			ani_wait = 10;
			ani_frame = 0;
			image_index = (dir*2) + ani_frame;
			break;
		case "idle_walk":
			scr_ani_frame();
			image_index = (dir*2) + ani_frame;
			break;
		case "walk":
			scr_ani_frame();
			ani_wait = 6;
			if (next_x != x) or (next_y != y)
			{
				switch (dir)
				{
					case 0: y +=  move_speed; break;
					case 1: x +=  move_speed; break;
					case 2: y += -move_speed; break;
					case 3: x += -move_speed; break;
				}
			}
			else
			{
				ani_state = "idle";
				if (mouse_face)
				{
					state = "free";
					dir = UP;
					mouse_face = false;	
				}
				with (obj_ram)
				{
					if (cuts_actors > 0) {cuts_actors += -1;}
				}
			}
			image_index = (dir*2) + ani_frame;
			if (mashroom)
			{
				switch (image_index)
				{
					case 0: image_index = 4; break;
					case 1: image_index = 5; break;
					case 2: image_index = 6; break;
					case 3: image_index = 7; break;
					case 4: image_index = 0; break;
					case 5: image_index = 1; break;
					case 6: image_index = 2; break;
					case 7: image_index = 3; break;
				}
			}
			break;
		case "play":
			ani_wait = 20;
			if (ani_count < ani_wait) {ani_count++;}
			else 
			{
				if (image_index < image_number) {image_index++;}
				else {state = "idle";}
				ani_count = 0;
			}
			break;
		case "meteor":
			var tmp_targ = obj_door_lab_up;
			if (ie(tmp_targ))
			{
				dir = UP;
				scr_ani_frame();
				if (distance_to_object(tmp_targ) < 4)
				{
					scr_snd(snd_eb_doorclose);
					if (object_index == obj_player)
					{
						visible = false;
					}
					else
					{
						instance_destroy();
					}
				}
				else
				{
					move_towards_point(tmp_targ.x, tmp_targ.y, 2);
				}
				image_index = (dir*2) + ani_frame;
			}
			break;
	}
}