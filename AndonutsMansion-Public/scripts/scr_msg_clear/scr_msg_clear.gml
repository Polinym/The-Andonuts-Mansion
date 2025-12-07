function scr_msg_clear()
{
	with (obj_msg) 
	{
		txt = ""; 
		name = ""; 
		txt_wait = "";
		active = false;
		state = 255;
		pos = 1;
		obj_ram.talking = false;
		obj_ram.text_done = false;
		with (par_actor) {talking = false;}
		with (obj_player) {talking = false;}
	}
}