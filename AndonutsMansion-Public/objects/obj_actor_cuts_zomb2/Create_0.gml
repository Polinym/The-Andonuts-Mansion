event_inherited();
ani_wait = round(ani_wait * 2.5);
dir = LEFT;
ani_state = "idle_walk";
if (scr_flag(10)) {instance_destroy();}