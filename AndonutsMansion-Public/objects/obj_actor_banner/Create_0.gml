event_inherited();
name = "Birthday banner";
look_line = [8, 8, 8];
take_line = [7, 7, 6];
if (scr_flag(2))
{
	name = "Defaced banner";
	sprite_index = spr_bday_banner2;
	look_line = [51, 52, 53];
}
scr_use_add(item_LegendaryBat, [7, 7, 7], false);