/// @description scr_snd(sound_index)
/// @param sound_index
function scr_snd(argument0) 
{
	with (obj_ram)
	{
	    if (argument0 != -1)
	    {
	    sound = audio_play_sound(argument0, 75, false);
	    audio_sound_gain(sound, volume_sound, 0);
	    }
	}
}
