function scr_new_Ness()
{
	scr_new_Defaults();
	name = "Ness";
	base_spr = spr_ness;
	spr = spr_ness;
	vacuum_spr = spr_ness_vaccuum;
	vacuum_dark = spr_ness_vacuum_dark;
	dark_spr = spr_ness_dark;
	hp = 10;
	index = 0;
	items[0] = item_LegendaryBat;
	psi = ["Lifeup", "Hypnosis", "Flash"];
	
	look_line = "~NNo problem here.";
	talk_line = "~NHello.";
	take_line = "~NI can't take that.";
	use_line = "~NWhat do I do with it?";
	give_line = "~NHere take this.";
	bgm = bgm_ness;
	
	hash = [rm_ballroom, 280, 568, DOWN];
}