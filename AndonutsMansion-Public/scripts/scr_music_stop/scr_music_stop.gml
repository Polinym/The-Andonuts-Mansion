/// @description scr_music_stop()
function scr_music_stop() 
{
	with (obj_ram) {if (music != -1) {audio_stop_sound(music); music = -1;}}
}
