/// @description scr_bgm_pause()
function scr_bgm_pause() 
{
	with (obj_ram)
	{if (bgm != -1) {audio_pause_sound(bgm);}}
}
