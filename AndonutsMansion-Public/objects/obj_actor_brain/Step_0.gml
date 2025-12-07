event_inherited();
if (take_update) or (use_update)
{
	scr_item_add(char, item_EyeballBrain);
	scr_any_add(hash);
	take_update = false;
	use_update = false;
	instance_destroy();
}