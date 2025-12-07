event_inherited();
for (var i = 0; i < 3; i++)
{
	var tmp_char = obj_ram.party[i];
	if (scr_item_has(tmp_char, item_Camshaft)) {instance_destroy(); break;}
}
name = "Discarded camshaft";
look_line = [427, 427, 428];
talk_line[0] = 429;
use_line = [430, 430, 430];
item = item_Camshaft;