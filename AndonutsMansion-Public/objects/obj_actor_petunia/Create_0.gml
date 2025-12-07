event_inherited();
name = "Demonic petunia";
type = "other";
if (scr_any_check(hash)) 
{
	icd(x+4, y+4, depth+1, obj_actor_hole);
	instance_destroy();
}
look_line = [227, 226, 226];
talk_line = [228, 228, 228];
use_line = [243, 240, 240];
scr_use_add(item_LegendaryBat, [230, 231, 232], false);
scr_give_add(item_Bananas, [233, 233, 233], false);
scr_give_add(item_Apple, [233, 233, 233], false);
scr_give_add(item_CanOfPepsC, [233, 233, 233], false);
scr_give_add(item_CarrotKey, [233, 233, 233], false);

scr_use_add(item_Weedkiller, [238, 238, 238], true);
scr_give_add(item_Weedkiller, [238, 238, 238], true);