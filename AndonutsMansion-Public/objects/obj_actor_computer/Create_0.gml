event_inherited();
name = "Computer";
look_line = [359, 360, 361];
talk_line[0] = 362;
take_line = [363, 363, 364];
use_line = [368, 368, 368];
scr_use_add(item_LegendaryBat, [365, 366, -1], false);
scr_use_add(item_CrackedPlate, [367, -1, -1], false);
if (obj_ram.mobile)
{
	use_line = [1162, 1162, 1162];	
}