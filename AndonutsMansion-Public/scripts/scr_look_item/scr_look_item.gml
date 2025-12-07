function scr_look_item()
{
	var tmp_char = char;
	var tmp_item = item;
	var tmp_targ = targ;
	var tmp_slot = slot;
	var item_obj = scr_open(tmp_item);
	obj_msg.cmd = "look";
	var success = false;
	var look_line = item_obj.look_line[tmp_char.index];
	if (look_line == -1)
	{
		scr_msg("~cThere's nothing interesting to look at.");	
	}
	else
	{
		scr_msg(obj_script_item.line[look_line]);
	}
	with (item_obj) {instance_destroy();}
}