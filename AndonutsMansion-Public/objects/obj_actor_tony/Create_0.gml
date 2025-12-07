event_inherited();
mask_index = spr_tony;
switch (room)
{
	case rm_ballroom:
		visible = false;
		if (scr_flag(2)) {instance_destroy();}
		else
		{
			dir = LEFT;
		}
		break;
}