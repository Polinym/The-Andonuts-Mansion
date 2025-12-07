event_inherited();
name = "Dynos";
look_line = [968, 968, 968];
talk_line = [970, 970, 970];
if (scr_flag(40))
{
	talk_line = [997, 997, 997];
}
use_item_line = [971, 971, 971];
dir = LEFT;
scr_use_add(item_TeddyBear, [-1, 972, -1], false);
if not (scr_flag(10)) {instance_destroy();}
mask_index = sprite_index;
lip_spr = spr_lips_dynos;
if (scr_flag(48))
{
	talk_line = [997, 1083, 997];	
}
if (scr_flag(51)) {instance_destroy();}
is_leaving = false;