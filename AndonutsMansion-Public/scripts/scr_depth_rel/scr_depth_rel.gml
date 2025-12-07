function scr_depth_rel()
{
	var tmp_y = (y + round(sprite_height/2));
	depth = -ceil((tmp_y - view_yview) / 2);
}