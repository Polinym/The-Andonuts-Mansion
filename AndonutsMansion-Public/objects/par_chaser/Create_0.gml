ani_count = 0; ani_wait = 7;
ani_frame = 0;
state = "free";
chase_distance = 96;

move_speed = 2;
dir = DOWN;
l_col = layer_tilemap_get_id("l_col");
name = "";
image_speed = 0;
caught = false;
caught_update = false;
caught_line = [-1, -1, -1];
warp_line = [-1, -1, -1];