/// @description scr_ambient(ambient_index)
/// @param music_index
function scr_ambient(argument0) 
{
	with (obj_ram)
	{
		var tmp_index = argument0;
		if (tmp_index != -1)
		{
		var ambient_snd = ambient_audio[tmp_index];
		if !(mute)
		{
		if (ambient_snd != -1)
		{
		    if !(audio_is_playing(ambient_snd))
		    {
			    ambient[tmp_index] = audio_play_sound(ambient_snd, 80, true);
			    audio_sound_gain(bgm, volume_ambient, 0);
		    }
		} 
		else {audio_stop_sound(ambient[tmp_index]);}
		}
		}
	}



}
