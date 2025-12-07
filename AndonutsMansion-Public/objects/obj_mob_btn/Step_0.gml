if (update)
{
	switch (key)
	{
		case vk_space:	frame = 0; break;
		case vk_lshift:	frame = 2; break;
		case 90:		frame = 16; break;
		//case 88:		frame = 6; break;
		case vk_up:		frame = 8; break;
		case vk_right:	frame = 10; break;
		case vk_down:	frame = 12; break;
		case vk_left:	frame = 14; break;
		//case 83:		frame = 16; break;
		//case 67:		frame = 18; break;
	}
	update = false;	
}

var tmp_event = 0;
for (var i = 0; i < 8; i++)
{
	var hover = position_meeting(device_mouse_x_to_gui(i), device_mouse_y_to_gui(i)-1024, self);
	if (hover)
	{
		if (device_mouse_check_button_pressed(i, mb_left))
		{
			if (not held)
			{
				tmp_event = 2;
				held = true;
			}
			break;
		}
		else
		if (device_mouse_check_button_released(i, mb_left))
		{
			tmp_event = 1;
			break;
		}
		else if (device_mouse_check_button(i, mb_left))
		{
			if (not held) {tmp_event = 2;}
			else {tmp_event = 3;}
			held = true;
			break;
		}
	}
	else
	{
		if (held) {tmp_event = 1;}
	}
}

switch (tmp_event)
{
	case 1: 
		if (held)
		{
			keyboard_key_release(key); 
			held = false;
		}
		break;
	case 2: keyboard_key_press(key); break;
	case 3: break;
}

image_index = frame;
if (held) {image_index++;}