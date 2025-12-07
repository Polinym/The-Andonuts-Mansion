/// @description scr_lb_format(txt, limit)
/// @param txt
/// @param  limit
function scr_lb_format(argument0, argument1) 
{
	var tmp_ftxt = argument0;
	var last_pos = -1;
	var tmp_c;
	var c_count = 0;
	var tmp_rpl = false;
	var skip = false;
	var tmp_i;
	for (tmp_i = 1; tmp_i < string_length(tmp_ftxt); tmp_i++)
	{
	    tmp_c = string_copy(argument0, tmp_i, 1);
		if (skip) 
		{
			if (tmp_c == "}") {skip = false;}
		}
		else
		{
		    switch (tmp_c)
		    {
		        case "|":
		            break;
				case "/":
					tmp_i += 1;
					break;
				case "~":
				case "&":
					tmp_i += 2;
					break;
				case "[":
					tmp_i += 4;
					break;
		        case "#":
				case ">":
				case "]":
		            c_count = 0;
		            last_pos = -1;
		            break;
		        case " ":
		            c_count++;
		            last_pos = tmp_i;
		            tmp_rpl = true;
		            break;
				case "{":
					skip = true;
					break;
		        case "?":
		        case "!":
		        case ".":
		        case ",":
		        case ":":
					tmp_rpl = false;
		            last_pos = tmp_i + 1;
		        default:
		            c_count++;
		            if (c_count > (argument1 - 2))
		            {
		                if (last_pos == -1)
		                {
		                    argument0 = string_insert("#", argument0, tmp_i);
		                }
		                else if (tmp_rpl)
		                {
		                    argument0 = string_delete(argument0, last_pos, 1);
		                    argument0 = string_insert("#", argument0, last_pos);
		                    last_pos = -1;
		                    tmp_rpl = false;
		                }
		                else
		                {
		                    argument0 = string_insert("#", argument0, last_pos);
		                    last_pos = -1;
		                }
		                c_count = 0;
		            }
		            break;
		    }
		}
	}
	return argument0;



}
