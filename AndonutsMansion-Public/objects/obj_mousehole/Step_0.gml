event_inherited();
if (use_item_update)
{
	scr_flag_set(33);
	mouse_out = true;
	use_item_update = false;
}

if (mouse_out)
{
	icd(x, y+1, depth-1, obj_mouse);
}

if (mouse_out) or (mouse_gone)
{
	scr_uses_reset();	
	use_item_line = [743, 743, 743];
	look_line = [744, 744, 744];
	mouse_out = false;
	mouse_gone = false;
}