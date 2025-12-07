function scr_new_Defaults()
{
	name = "Kid";
	hp = 10;
	index = 0;
	items[99] = -1; for (var i = 0; i < 99; i++) {items[i] = -1;}
	psi = ["", "", ""];
	base_spr = -1;
	spr = -1;
	vacuum_spr = -1;
	vacuum_dark = -1;
	dark_spr = -1;
	bgm = -1;
	mashroom = 0;
	luigi = false;
	
	look_line = "No problem here.";
	talk_line = "I can't talk with that.";
	take_line = "I can't take that.";
	use_line = "I can't use that.";
	give_line = "Here you go.";
	
	fow = false;
	
	hash = [0, 0, 0, 0];
}