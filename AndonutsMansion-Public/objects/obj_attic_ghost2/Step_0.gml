event_inherited();
if (use_item_update)
{
	scr_any_add(hash);
	instance_destroy();
}

if (stun_count > 0)
{
	sprite_index = spr_ghost_stun;
	stun_count += -1;
}
else
{
	sprite_index = spr_ghost;
}