depth = -298;
x = view_xview; y = view_yview;
draw_set_color(c_black);
draw_rectangle(x, y, x+256, y+224, false);
draw_set_color(c_white);
with (obj_player)
{
	draw_sprite(dark_spr, image_index, x, y);
}