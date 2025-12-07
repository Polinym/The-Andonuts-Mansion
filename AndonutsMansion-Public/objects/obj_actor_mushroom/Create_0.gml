event_inherited();
if ( scr_item_has(obj_ram.char, item_Mushroom) ) {instance_destroy();}
else
{
	name = "Mushroom";
	type = "loot";
	talk_line[0] = 104;
	take_line = [426, 426, 426];
	item = item_Mushroom;
	scr_use_add(item_Weedkiller, [275, 275, 275]);
	scr_use_add(item_LegendaryBat, [276, 276, 276]);
}