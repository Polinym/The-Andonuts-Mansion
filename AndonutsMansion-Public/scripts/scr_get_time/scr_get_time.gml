function scr_get_time()
{
	var tmp_txt = string(obj_ram.minutes) + ":";
	var tmp_sec = obj_ram.seconds;
	if (tmp_sec < 10)
	{
		tmp_txt += "0" + string(tmp_sec);
	} 
	else
	{
		tmp_txt += string(tmp_sec);
	}
	return tmp_txt;
}