event_inherited();
if (use_item_update)
{
	has_bone = true;
	scr_flag_set(26);
	use_item_update = false;
}

if (has_bone)
{
	name = "Dog dish with bone";
	look_line = [613, 614, 605];
	scr_uses_reset();
	image_index = 1;
	has_bone = false;
}