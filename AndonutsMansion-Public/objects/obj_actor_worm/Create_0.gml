event_inherited();
name = "Master criminal worm";
look_line = [1071, 1075, 1075];
talk_line[0] = 1072;
take_line = [1073, 1074, 1074];
use_line = [1076, 1076, 1076];
scr_use_add(item_LegendaryBat, [1077, 1078, 1078], false);
scr_use_add(item_TeddyBear, [-1, 1079, -1], false);
scr_use_add(item_Apple, [1080, 1080, 1080], false);
scr_give_add(item_Apple, [1080, 1080, 1080], false);
scr_use_add(item_StiffSaturn, [1080, 1080, 1080], false);
scr_give_add(item_StiffSaturn, [1080, 1080, 1080], false);
item = item_MasterCriminalWorm;
dark_spr = spr_worm_dark;

worm_count = 0; worm_wait = 10;
l_col = layer_tilemap_get_id("l_col");