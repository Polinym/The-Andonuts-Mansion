event_inherited();
if (scr_flag(34)) {instance_destroy();}
else {scr_bgm(bgm_combat);}
name = "Rowdy gold mouse";
lip_spr = -1;
look_line = [746, 747, 748];
talk_line = [749, 750, 670];
take_line = [752, 753, 754];
use_line = [745, 745, 745];
use_item_line = [745, 745, 745];
scr_use_add(item_LegendaryBat, [759, 760, 761], false);
scr_use_add(item_VacuumCleaner, [755, 755, 755], false);
scr_use_add(item_TeddyBear, [755, 756, 755], false);

shine_count = 0; shine_wait = 2;
shine_frame = 0;

retreat = false;
shine_alpha = 0;
shine_state = 0;