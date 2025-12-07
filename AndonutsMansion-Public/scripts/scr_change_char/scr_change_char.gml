function scr_change_char(arg_char)
{
	obj_ram.char = arg_char;
	with (obj_ui) {char = arg_char;}
	with (obj_ui_list) {char = arg_char; page = 0; update = true;}
}