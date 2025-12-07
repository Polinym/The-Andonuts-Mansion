event_inherited();
name = "Brain in jar";
look_line = [973, 974, 975];
talk_line = [976, -1, -1];
take_line = [977, 978, 979];
use_line = [981, 980, 980];
scr_use_add(item_TeddyBear, [-1, 982, -1], false);
scr_use_add(item_LegendaryBat, [983, 983, 983], false);
scr_use_add(item_Scalpel, [985, 984, 984], false);

scr_give_add(item_Bananas, [986, 984, 984], false);
scr_give_add(item_Apple, [986, 984, 984], false);
scr_give_add(item_Bananas, [986, 984, 984], false);
scr_give_add(item_Mushroom, [986, 984, 984], false);
scr_give_add(item_CanOfPepsC, [986, 984, 984], false);

if (scr_flag(53))
{
	look_line = [1104, 1104, 1104];
	talk_line = [1105, 1105, 1105];
	take_line = [1106, 1106, 1106];
	use_line = [1106, 1106, 1106];
}

if (scr_any_check(hash)) {instance_destroy();}