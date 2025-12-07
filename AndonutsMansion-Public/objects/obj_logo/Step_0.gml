if ( kcp(ord("X")) )
{
	room_goto(rm_title);
	instance_destroy();
}
switch (ani_state)
{
	case 0:
		if (image_alpha > 0) {image_alpha += -0.05;}
		else {ani_state++; scr_snd(snd_mm_lucas);}
		break;
	case 1:
		if (ani_count < 30) {ani_count++;}
		else {ani_state++;}
		break;
	case 2:
		if (image_alpha < 1) {image_alpha += 0.02;}
		else {room_goto(rm_title); instance_destroy();}
		break;
}