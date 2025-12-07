function scr_text_lb()
{
	txt += "#";
	for (var i = 0; i < 10; i++) {txt_colors[i] += "#";}
	if (lines < 2) {lines++;}
	else
	{
		//txt = scr_text_delline(txt);
		//for (var i = 0; i < 10; i++) {txt_colors[i] = scr_text_delline(txt_colors[i]);}
		state = 2;
		scr_action_btn("next");
		with (obj_text_shifter)
		{ani_count = 0; image_index = 0;}
		lines = 0;
	}
}