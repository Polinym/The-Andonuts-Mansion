event_inherited();
name = "Wounded zombie";
look_line = [1120, 1120, 1120];
talk_line = [1121, 1121, 1121];
take_line = [1122, 1122, 1122];
scr_use_add(item_LegendaryBat, [1123, 1123, 1123], false);
scr_use_add(item_EyeballBrain, [1124, 1124, 1124], true);
scr_give_add(item_EyeballBrain, [1124, 1124, 1124], true);
if ( not scr_flag(53) ) or (scr_any_check(hash)) {instance_destroy();}
lip_spr = -1;
mask_index = sprite_index;