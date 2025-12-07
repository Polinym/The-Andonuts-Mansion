scr_depth_rel();
if (not obj_ram.paused) and (not obj_ram.cmd_lock)
{
	switch (state)
	{
		case "free":
			scr_ani_frame();
			if (ie(obj_player))
			{
				if (distance_to_object(obj_player) < chase_distance)
				{
					var next_x = x; var next_y = y;
					var targ_x = obj_player.x;
					var targ_y = obj_player.y;
					var x_dist = abs(targ_x - x);
					var y_dist = abs(targ_y - y);
					var vel = 0;
					if (x_dist > 1)
					{
						if (x < targ_x)
						{
							vel = move_speed;
							dir = RIGHT;
						}
						else if (x > targ_x)
						{
							vel = -move_speed;
							dir = LEFT;	
						}
						if (scr_freespace(x+vel, next_y))
						{
							x += vel;
						}
					}
					
					if (y_dist > 1)
					{
						if (y < targ_y)
						{
							vel = move_speed;
							dir = DOWN;
						}
						else if (y > targ_y)
						{
							vel = -move_speed;
							dir = UP;	
						}
						if (scr_freespace(next_x, y+vel))
						{
							y += vel;
						}
					}
					
					if (place_meeting(next_x, next_y, obj_player))
					{
						if (obj_player.state == "free")
						{
							obj_player.state = "caught";
							with (obj_ram)
							{
								paused = true;
								msg_char = obj_ram.char;
							}
							obj_ram.msg_targ = id;
							obj_ram.msg_item = -1;
							caught = true;
						}
					}
					else
					{
						
					}
				}
			}
			image_index = (dir*2) + ani_frame;
			break;
	}
}