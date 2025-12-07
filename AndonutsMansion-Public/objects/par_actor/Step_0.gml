scr_depth_rel();
scr_actor_talk();
if (not obj_ram.paused)
{
	switch (type)
	{
		case "person":
		case "ally":
		case "other":
			if (animate)
			{
				if (ani_count < ani_wait) {ani_count++;}
				else
				{
					ani_frame = not ani_frame;
					ani_count = 0;	
				}
			}
			image_index = (dir*2)+ani_frame;
			break;
		case "cuts": scr_actor_cuts(); break;
	}
}
if (vanish)
{
	if (image_alpha > 0) {image_alpha += -0.05;}
	else {instance_destroy();}
}
if (shaking) 
{
	if (shake) {x += 1;}
	else {x += -1;}
	shake = not shake;
}