function scr_ambient_stop()
{
	for (var i = 0; i < max_ambient; i++)
	{
		snd = ambient[i];
		audio_stop_sound(snd);
		ambient[i] = -1;
	}
}