if (instance_exists(obj_eff_raincloud))
{
    obj_eff_raincloud.drop_count += -1;
    if (obj_eff_raincloud.drop_count < 0) {obj_eff_raincloud.drop_count = 0;}
}

