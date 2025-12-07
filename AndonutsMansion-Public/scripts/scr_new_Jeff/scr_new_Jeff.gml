function scr_new_Jeff()
{
	scr_new_Defaults();
	name = "Jeff";
	spr = spr_jeff;
	dark_spr = spr_jeff_dark;
	hp = 8;
	index = 2;
	items[0] = item_GaiaBeam;
	psi = ["", "", ""];
	hash = [rm_test, 200, 208, 1];
	bgm = bgm_jeff;
	
	look_line = "~JNo problem here.";
	talk_line = "~JI can't talk with that.";
	take_line = "~JI can't take that.";
	use_line = "~JI can't use that.";
	give_line = "~JHere you go.";
}