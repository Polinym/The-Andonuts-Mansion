draw_set_font(font);
draw_set_color(c_white);
draw_txt(x, y, txt);
for (var i = 0; i < 10; i++)
{
	var color = colors[i];
	if (color != -1)
	{
		draw_set_color(color);
		draw_txt(x, y, txt_colors[i]);
	}
}
draw_set_color(c_white);