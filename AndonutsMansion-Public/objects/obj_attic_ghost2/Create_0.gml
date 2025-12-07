event_inherited();
if (scr_any_check(hash)) {instance_destroy();}
else
{
name = "Zombie possessor";
look_line = [477, 477, 477];
talk_line = [476, 476, 476];
take_line = [467, 468, 468];
scr_use_add(item_LegendaryBat, [478, 478, 478], false);
scr_use_add(item_Flashlight, [475, 475, 475], false);
scr_use_add(item_VacuumCleaner, [480, 480, 480], false);

scr_give_add(item_Apple, [473, 473, 473], false);
scr_give_add(item_Bananas, [473, 473, 473], false);
scr_give_add(item_Mushroom, [473, 473, 473], false);
scr_give_add(item_CanOfPepsC, [474, 474, 474], false);
mask_index = sprite_index;
stun_count = 0;
lip_spr = spr_lips_ghost;
}