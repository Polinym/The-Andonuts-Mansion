function scr_ani_frame()
{
	if (ani_count < ani_wait) {ani_count++;}
	else
	{
		ani_frame = not ani_frame;
		ani_count = 0;	
	}
}