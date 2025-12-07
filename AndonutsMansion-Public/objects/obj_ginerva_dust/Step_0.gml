y += -move_speed;
if (image_alpha > 0) {image_alpha += -fade_speed;}
else
{
	spawner.dust_count += -1;
	instance_destroy();	
}