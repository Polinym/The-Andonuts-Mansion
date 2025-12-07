event_inherited();
name = "PorcBanc= repo man";
look_line = [392, 393, 394];
talk_line = [412, 412, 413];
scr_use_add(item_LegendaryBat, [415, 415, 415], false);
scr_use_add(item_TeddyBear, [-1, 416, -1], false);
DIR = DOWN;
if (not scr_flag(15)) {instance_destroy();}
else if (scr_flag(16))
{
	icd(x-16, y, depth+1, obj_actor_camshaft);
	instance_destroy();	
}
lip_spr = spr_lips_porcbanc;