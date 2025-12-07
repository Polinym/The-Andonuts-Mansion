function scr_new_Paula()
{
	scr_new_Defaults();
	name = "Paula";
	base_spr = spr_paula;
	spr = spr_paula;
	dark_spr = spr_paula_dark;
	vacuum_spr = spr_paula_vaccuum;
	vacuum_dark = spr_paula_vacuum_dark;
	hp = 6;
	index = 1;
	items[0] = item_TeddyBear;
	psi = ["Fire", "Freeze", "Thunder"];
	
	look_line = "~PNo problem here.";
	talk_line = "~PI can't talk with that.";
	take_line = "~PI can't take that.";
	use_line = "~PI can't use that.";
	give_line = "~PCould you take this?";
	bgm = bgm_paula;
	
	hash = [rm_ballroom, 248, 564, DOWN];
}