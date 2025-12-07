if (ani_count < ani_wait) {ani_count++;}
else
{
	image_index = not image_index;
	ani_count = 0;	
}
switch (state)
{
	case 0:
		if (wait_count < wait_wait) {wait_count++;}
		else
		{
			state++;	
		}
		break;
	case 1:
		if (image_alpha > 0) {image_alpha += -0.1;}
		else
		{
			instance_destroy();	
		}
		break;
}