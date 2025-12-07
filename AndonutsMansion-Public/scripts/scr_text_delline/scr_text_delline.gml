function scr_text_delline(argument0) 
{
	for (var i = 1; i < string_length(argument0); i++)
	{
	    if (string_copy(argument0, i, 1) == "#")
	    {argument0 = string_delete(argument0, 1, i); break;}
	}
	return argument0;
}
