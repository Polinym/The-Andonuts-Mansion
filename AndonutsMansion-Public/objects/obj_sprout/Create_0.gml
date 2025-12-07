event_inherited();
name = "Immobile sprout";
look_line = [586, 587, 588];
talk_line = [589, 590, -1];
take_line = [591, 592, 593];
scr_use_add(item_LegendaryBat, [594, 592, 592], false);
scr_use_add(item_VacuumCleaner, [594, 592, 592], false);
scr_use_add(item_Apple, [595, 596, 596], false);
scr_use_add(item_Bananas, [595, 596, 596], false);
scr_use_add(item_CanOfPepsC, [595, 597, 597], false);
scr_use_add(item_Weedkiller, [598, 592, 599], false);
scr_use_add(item_CanOfWater, [624, 625, 626], false);
watered = scr_any_check(hash);
if (watered) {name = "Happy sprout";}