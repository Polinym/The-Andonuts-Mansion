/// @description scr_music_stop()
function scr_bgm_stop() 
{
	with (obj_ram)
	{if (bgm != -1) {audio_stop_sound(bgm); bgm = -1;}}
}
