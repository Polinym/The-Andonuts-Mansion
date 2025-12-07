function scr_baw(arg_on)
{
	if not (arg_on) 
	{
		if not (obj_ram.fow_was_on) {return false;}
	}
	else
	{
		obj_ram.fow_was_on = true;	
	}
	var layers = layer_get_all();
	var tmp_layer;
	for (var i = 0; i < array_length(layers); i++)
	{
		tmp_layer = layers[i];
		if (arg_on) {layer_set_fx(tmp_layer, fx_baw);}
		else {layer_clear_fx(tmp_layer);}
	}
	return true;
}