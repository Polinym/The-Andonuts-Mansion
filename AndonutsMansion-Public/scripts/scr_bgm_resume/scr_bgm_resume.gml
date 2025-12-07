/// @description scr_bgm_pause()
function scr_bgm_resume() 
{
	with (obj_ram) 
	{
		if (bgm != -1) {audio_resume_sound(bgm);}
		if (music != -1) {scr_music_stop();}
	}
}
