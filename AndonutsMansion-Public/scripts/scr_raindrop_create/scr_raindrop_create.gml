function scr_raindrop_create() 
{
	var rain_x = scr_rng(4, 220); var rain_y = 0;
	if (raindrop_count < raindrop_max)
	{
	    raindrop = instance_create(-64, -64, rain_type);
	    raindrop.self_x = rain_x; raindrop.self_y = rain_y;
	    raindrop_count++;
	}
}
