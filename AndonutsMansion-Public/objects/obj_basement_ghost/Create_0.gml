event_inherited();
if (scr_any_check(hash)) {instance_destroy();}
else
{
name = "Pinkie";
lip_spr = -1;
look_line = [797, 797, 797];
talk_line = [796, 796, 796];
take_line = [467, 468, 468];
scr_use_add(item_LegendaryBat, [478, 478, 478], false);
scr_use_add(item_Flashlight, [475, 475, 475], false);

if not (scr_item_has(char, item_VacuumCleaner))
{
	talk_line = [783, 783, 783];
}
scr_use_add(item_VacuumCleaner, [799, 799, 799], false);

scr_give_add(item_Apple, [473, 473, 473], false);
scr_give_add(item_Bananas, [473, 473, 473], false);
scr_give_add(item_Mushroom, [473, 473, 473], false);
scr_give_add(item_CanOfPepsC, [474, 474, 474], false);

scr_give_add(item_Scalpel, [798, 798, 798], false);
mask_index = sprite_index;
stun_count = 0;
lip_spr = -1;
image_alpha = 0.75;
}

if (scr_flag(53)) {instance_destroy();}