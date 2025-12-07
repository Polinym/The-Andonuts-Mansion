event_inherited();
name = "Mouse hole";
look_prefix = "in";
look_line = [729, 729, 729];
talk_line = [730, 731, 731];
take_line = [732, 732, 732];
use_line = [733, 733, 733];
scr_use_add(item_LegendaryBat, [734, -1, -1], false);
scr_use_add(item_TeddyBear, [-1, 735, -1], false);
scr_use_add(item_VacuumCleaner, [736, 738, -1], false);
scr_use_add(item_Apple, [737, 737, 737], false);
scr_use_add(item_Mushroom, [737, 737, 737], false);
scr_use_add(item_Bananas, [737, 737, 737], false);
scr_use_add(item_CanOfPepsC, [737, 737, 737], false);
scr_use_add(item_CanOfHotWater, [737, 737, 737], false);
scr_use_add(item_CanOfHotWater, [737, 737, 737], false);
scr_use_add(item_CanOfWater, [737, 737, 737], false);
scr_use_add(item_CarrotKey, [737, 737, 737], false);
scr_use_add(item_UnassumingBone, [737, 737, 737], false);
scr_use_add(item_Chicken, [737, 737, 737], false);
scr_use_add(item_FunnyBentTube, [843, 843, 843], false);
mouse_out = scr_flag(33);
mouse_gone = scr_flag(34);
if (not (scr_flag(10)))
{
	look_line[2] = 391;
	use_line[2] = 383;	
}
if not (mouse_out or mouse_gone)
{
	scr_use_add(item_Flashlight, [740, 741, 742], false);
}

respawn_mouse = false;
