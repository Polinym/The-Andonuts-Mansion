event_inherited();
name = "Ladder";
type = "door";
look_line = [241, 241, 241];
talk_line = [245, -1, -1];
use_line = [-1, -1, -1];
if (not scr_flag(10))
{
	warp_line = [258, 258, 258];
}
door_sound = -1;
scr_door_set(rm_basement, 11, DOWN);
locked = false;
fow = false;
queue_cuts = -1;