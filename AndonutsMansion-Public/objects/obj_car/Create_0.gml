event_inherited();
name = "Dr. Andonuts's sports car";
look_line = [376, 377, 378];
talk_line = [379, -1, -1];
take_line = [380, 381, 382];
use_line = [383, 383, 384];
scr_use_add(item_LegendaryBat, [385, 386, 387], false);
scr_use_add(item_TeddyBear, [-1, 388, -1], false);
scr_use_add(item_FrenchDictionary, [389, 389, 389], false);
scr_use_add(item_ApplianceManual, [390, 390, 390], false);
scr_use_add(item_CanOfTermites, [840, 840, 840], false);
scr_use_add(item_FunnyBentTube, [841, 841, 842], false);
if (not (scr_flag(10)))
{
	look_line[2] = 391;
	use_line[2] = 383;	
}
if (scr_flag(53))
{
	icd(x, y, depth, obj_car2);
	instance_destroy();	
}