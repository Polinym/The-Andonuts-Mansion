function scr_draw_menu(arg_w, arg_h)
{
	var tmp_txt = "";
	tmp_txt = "0" + string_repeat("1", arg_w) + "2#";
	var mid = "3" + string_repeat("4", arg_w) + "5#";
	for (var i = 0; i < (arg_h*2); i++) {tmp_txt += mid;}
	tmp_txt += "6" + string_repeat("7", arg_w) + "8";
	return tmp_txt;
}