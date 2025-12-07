event_inherited();
queue_cuts = -1;
name = "Ladder";
type = "door";
look_line = [244, 244, 244];
talk_line = [245, -1, -1];
use_line = [-1, -1, -1];
if (not scr_flag(8))
{
	use_line = [250, 250, 250];
}
door_sound = -1;
scr_door_set(rm_courtyard, 3, DOWN);
locked = false;
fow = false;