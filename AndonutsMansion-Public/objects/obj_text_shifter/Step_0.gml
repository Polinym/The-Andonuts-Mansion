if (ani_count < ani_wait) {ani_count++;}
else
{
	if (image_index == 0) {image_index = 1;}
	else {image_index = 0;}
	ani_count = 0;	
}