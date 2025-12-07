event_inherited();
switch (shine_state)
{
	case 0: 
		if (shine_alpha < 1) {shine_alpha += 0.05;} 
		else {shine_state = 1;}
		break;
	case 1: 
		if (shine_alpha > 0) {shine_alpha += -0.05;} 
		else {shine_state = 0;}
		break;
}
draw_set_alpha(shine_alpha);
draw_sprite(spr_sparkle, shine_frame, x, y-8);
draw_set_alpha(1);