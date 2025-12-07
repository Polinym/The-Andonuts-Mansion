function scr_port(arg_port, arg_blip)
{
	obj_text_port.sprite_index = arg_port;
	obj_ram.blip_sound = arg_blip;
	with (obj_text) {blip_count = blip_wait;}
}