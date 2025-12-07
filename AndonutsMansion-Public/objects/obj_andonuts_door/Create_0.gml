event_inherited();
name = "Dr. Andonuts";
look_line = [1097, 1097, 1097];
talk_line = [1098, 1098, 1098];
take_line = [1099, 1099, 1099];
use_line = [1100, 1100, 1100];
dir = DOWN;
lip_spr = spr_lips_andonuts;
mask_index = spr_andonuts_evil2;
if (scr_flag(56))
{
	x += 20;
	y += -20;
	mask_index = spr_ness;
}
scr_use_add(item_LegendaryBat, [1101, 1101, 1101], false);
scr_use_add(item_PurpleSlimyMeteor, [1102, 1102, 1102], false);
scr_use_add(item_EyeballBrain, [1107, 1107, 1107], false);
scr_give_add(item_PurpleSlimyMeteor, [1103, 1103, 1103], false);
psi_move = false;
move_count = 40;
if (not scr_flag(53)) {instance_destroy();}