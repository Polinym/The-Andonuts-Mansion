if (active)
{
	scr_depth_rel();
	if (ani_count < ani_wait) {ani_count++;}
	else
	{
		ani_count = 0;
		if (i < 24) {i++;}
		else {image_index = 2;}
	}
}