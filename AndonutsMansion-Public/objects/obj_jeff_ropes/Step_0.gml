event_inherited();
if (use_item_update)
{
	scr_flag_set(36);
	obj_ram.locked[2] = false;
	var tmp_ally = icd(x, y, depth, obj_actor_ally);
	scr_bgm_stop();
	with (tmp_ally)
	{
		name = "Jeff";
		sprite_index = spr_jeff;
		index = 2;
		talk_line = [782, 782, 782];
	}
	with (obj_ram.jeff)
	{
		items[0] = item_LabKey;	
		hash = [rm_attic, 1111, 161, DOWN];
	}
	instance_destroy();
}