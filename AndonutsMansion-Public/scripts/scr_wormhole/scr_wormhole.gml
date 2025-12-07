function scr_wormhole()
{
	stuck_check = false;
	scr_tp(room, 1, DOWN);
	obj_ram.warp_line = 800 + index;
	mercy_count = 999;
	scr_snd(snd_whoa);
	state = "whoa";
}