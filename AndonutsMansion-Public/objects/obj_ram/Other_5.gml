for (var i = 0; i < max_ambient; i++)
{
	snd = ambient[i];
	if not (instance_exists(ambient_map[i]))
	{
		audio_stop_sound(snd);
		ambient[i] = -1;
	} else {scr_ambient(i);}
}