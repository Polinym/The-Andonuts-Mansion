event_inherited();
if (use_item_update)
{
	scr_any_add(hash);
	fixed = true;	
	use_item_update = false;
}

if (fixed)
{
	look_line = [1141, 1141, 1141];
	talk_line = [1141, 1141, 1141];
	take_line = [1141, 1141, 1141];
	take_line = [1141, 1141, 1141];
	scr_uses_reset();
	use_item_line = [1141, 1141, 1141];
	fixed = false;
	scr_cuts_set("use", 0, obj_cuts_car);
	scr_bgm(bgm_car);
	is_running = true;
}
if (is_running)
{
	sprite_index = spr_car_on;
	scr_ani_frame();
	image_index = ani_frame;
}