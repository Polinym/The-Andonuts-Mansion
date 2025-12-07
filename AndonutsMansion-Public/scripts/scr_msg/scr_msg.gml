function scr_msg(arg_msg)
{
	obj_ram.text_done = false;
	with (obj_msg)
	{
		with (par_actor) {talking = false;}
		with (obj_player) {talking = false;}
		txt = "";
		name = "";
		suffix = "";
		txt_wait = "";
		///if (arg_name != "")
		//{
		//	arg_msg = ":<" + arg_msg + ">";	
		//	obj_ram.talking = true;
		//}
		pos = 1;
		blip_count = blip_wait;
		work_txt = arg_msg;
		wait_count = 0;
		active = true;
		font = font_main;
		
		char = obj_ram.msg_char;
		targ = obj_ram.msg_targ;
		item = obj_ram.msg_item;
		
		state = 0;
		
	}
	
	/*
	arg_msg = scr_lb_format(arg_msg, 32);
	with (obj_ram)
	{
		text_done = false;
		blip_sound = -1;
	}
	if not (ie(par_text))
	{
		scr_text_open();	
	}
	obj_text.work_txt = arg_msg;
	with (obj_text)
	{
		pos = 1;
		txt = "";
		for (var i = 0; i < 10; i++) {txt_colors[i] = "";}
		state = 1;
		lines = 0;
		pause_count = 0;
		display = false;
		auto = false;
		blip_count = blip_wait;
		obj_text_port.sprite_index = -1;
		pos_end = string_length(work_txt) + 1;
		scr_action_btn("");
	}
	*/
	
}