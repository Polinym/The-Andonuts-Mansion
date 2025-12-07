event_inherited();
if (shine_count < shine_wait) {shine_count++;}
else
{
	if (shine_frame < 7) {shine_frame++;}
	else {shine_frame = 0;}
	shine_count = 0;	
}

if (talk_update)
or (take_update)
or (use_update)
{
	retreat = true;	
}

if (use_item_update)
{
	if (scr_flag(34))
	{
		scr_item_add(char, item_StiffMouse);
		instance_destroy();
	}
	else
	{
		retreat = true;
	}
}

if (retreat)
{
	scr_flag_unset(33);
	with (obj_mousehole)
	{
		icd(x, y, depth, obj_mousehole);
		instance_destroy();
	}
	instance_destroy();	
}