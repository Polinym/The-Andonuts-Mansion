event_inherited();
switch (room)
{
	case rm_entrance:
		if (scr_flag(1)) {instance_destroy();}
		else
		{
			sprite_index = spr_paula_party;
			dir = LEFT;
			index = 1;
		}
		break;
}