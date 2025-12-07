event_inherited();
dir = UP;
ani_wait = round(ani_wait * 2.5);
ani_state = "idle_walk";
if (scr_flag(10)) {instance_destroy();}