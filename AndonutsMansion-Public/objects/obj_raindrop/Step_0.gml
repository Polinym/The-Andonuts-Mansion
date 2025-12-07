self_y += 12;

if (x_count < x_wait) {x_count++;}
else {x_count = 0; self_x++;}

if (self_y > (border)) or (self_y < 0)
{
if (instance_exists(obj_rain)) {obj_rain.raindrop_count += -1;}
instance_destroy();
}

