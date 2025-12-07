event_inherited();
name = "SWAP-E-HEAD Machine";
look_line = [540, 540, 540];
talk_line = [541, -1, -1];
take_line = [1053, 1053, 1053];
use_item_line = [544, 544, 544];
scr_use_add(item_LegendaryBat, [542, 542, 543], false);
scr_use_add(item_TeddyBear, [-1, 539, -1], false);
scr_use_add(item_VacuumCleaner, [545, -1, -1], false);

use_line = [1050, 1050, 1050];
if ( scr_flag(45) )
{
	use_line = [1051, 1052, 1051];
}
if ( scr_flag(46) )
{
	use_line = [1063, 1062, 1064];
}