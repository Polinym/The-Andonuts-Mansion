/// @description scr_music(music_index)
/// @param music_index
function scr_music(argument0) 
{
	with (obj_ram)
	{
		if not (mute)
		{
			if (argument0 != -1)
			{
			    if !(audio_is_playing(argument0))
			    {
			    scr_music_stop();
				music = audio_play_sound(argument0, 64, false);
			    }
				audio_sound_gain(music, volume_music, 0);
			} 
			else {scr_music_stop();}
		}
	}



}
