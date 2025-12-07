/// @description scr_music_fadeout()
function scr_music_fadeout() 
{
	with (obj_ram) {if (music != -1) {audio_stop_sound(music); music = -1;}}
}
