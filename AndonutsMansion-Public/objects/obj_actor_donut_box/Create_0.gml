event_inherited();
name = "Box of doughnuts";
look_prefix = "inside";
talk_line[0] = 100;
if (scr_any_check(hash))
{
	name = "Empty box of doughnuts";
	look_line = [44, 44, 44];
	take_line = [45, 45, 45];
	look_prefix = "in";
	image_index = 1;
}
else
{
	look_line = [49, 49, 49];
	take_line = [50, 50, 50];
	
}
y += -2;
//show_message(hash);