event_inherited();
if (talked_to)
{
	look_line = [1149, 1149, 1149];
	talk_line = [1148, 1148, 1148];
	take_line = [1151, 1151, 1151];
	use_line = [1150, 1150, 1150];
	use_item_line = [1148, 1148, 1148];
	cuts = ["", -1, -1];
	scr_uses_reset();
	scr_use_add(item_LegendaryBat, [1152, 1152, 1152], false);
}

if (use_item_update)
{
	scr_snd(snd_eb_smash);
	icd(x, y, depth, obj_polinym_hit);
	instance_destroy();
	use_item_update = false;	
}