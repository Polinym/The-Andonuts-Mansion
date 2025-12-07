function destroy_if_exists(argument0) 
{
	if (instance_exists(argument0)) {with (argument0) {instance_destroy();}}
}

function die(argument0)
{
	destroy_if_exists(argument0);	
}

function get_int(arg_str)
{
	return real(string_digits(get_string(arg_str, "")));
}

function ie(argument0)
{
	return instance_exists(argument0);	
}

function icd(arg_x, arg_y, arg_depth, arg_inst)
{
	return instance_create_depth(arg_x, arg_y, arg_depth, arg_inst);
}

function kcp(arg_key)
{
	return keyboard_check_pressed(arg_key);	
}

function kc(arg_key)
{
	return keyboard_check(arg_key);	
}

function get_str(arg_str)
{
	return get_string(arg_str, "");	
}

function vgh(arg_str)
{
	return variable_get_hash(arg_str);
}

function get_asset(arg_name)
{
	return asset_get_index(get_str(arg_name));	
}

function instance_create(arg_x, arg_y, arg_obj)
{
	return icd(arg_x, arg_y, -1, arg_obj);	
}

function string_set(arg_string, arg_char, arg_pos)
{
	var tmp_str = string_delete(arg_string, arg_pos, 1);
	return string_insert(arg_char, tmp_str, arg_pos);
}

function new_array(arg_size, arg_fill)
{
	var tmp;
	tmp[arg_size-1] = arg_fill;
	for (var i = 0; i < arg_fill; i++)
	{
		tmp[i] = arg_fill;
	}
	return tmp;
}

function draw_txt(arg_x, arg_y, arg_string)
{
	draw_text(arg_x, arg_y, string_hash_to_newline(arg_string));	
}

function draw_txt_centered(arg_x, arg_y, arg_string)
{
	draw_set_halign(fa_center);
	draw_txt(arg_x, arg_y, arg_string);
	draw_set_halign(fa_left);
}

function get_tile(arg_l, arg_x, arg_y)
{
	return tile_get_index(tilemap_get_at_pixel(arg_l, arg_x, arg_y));	
	/*
	var mx = tilemap_get_cell_x_at_pixel(arg_l, arg_x, arg_y);
	var my = tilemap_get_cell_y_at_pixel(arg_l, arg_x, arg_y);
	var data = tilemap_get(arg_l, mx, my);
	return tile_get_index(data);
	*/
}

function draw_sprite_scaled(arg_sprite, arg_index, arg_x, arg_y, arg_xscale, arg_yscale)
{
	draw_sprite_ext(arg_sprite, arg_index, arg_x, arg_y, arg_xscale, arg_yscale, 0, c_white, 1);
}