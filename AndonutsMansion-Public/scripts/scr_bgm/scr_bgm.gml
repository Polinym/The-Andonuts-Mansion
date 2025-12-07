/// @description scr_bgm(music_index)
/// @param music_index
function scr_bgm(argument0) 
{
	with (obj_ram)
	{
		if not (mute)
		{
			if (argument0 != -1)
			{
				if not (audio_is_playing(argument0))
				{
				scr_bgm_stop();
				bgm = audio_play_sound(argument0, 80, true, volume_bgm);
				//audio_sound_gain(bgm, volume_bgm, 0);
				}
			} 
			else {scr_bgm_stop();}
		}
	}



}
