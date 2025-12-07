if (state_update) {state++; state_update = false;}
switch (wait_type)
{
	case "wait":
		if (ani_count < ani_wait) {ani_count++;}
		else
		{
			running = true;
			ani_count = 0;	
		}
		break;
	case "actor":
		if (obj_ram.cuts_actors < 1)
		{
			running = true;
		}
		break;	
	case "reading":
		if (obj_ram.text_done)
		{
			obj_ram.text_done = false;
			running = true;
		}
		break;
}