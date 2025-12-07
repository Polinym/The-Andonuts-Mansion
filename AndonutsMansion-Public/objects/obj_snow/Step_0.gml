if (ini)
{
    for (var i = 0; i < scr_rng(16, 32); i++) 
    {
    scr_raindrop_create();
    raindrop.self_y = scr_rng(0, 255);
    }
    ini = false;
}

if (rain_count < rain_wait) {rain_count++;}
else
{
    rain_count = 0;
    if (scr_pchance(2, 5)) {rain_wait = scr_rng(1, 4);}
    else {rain_wait = scr_rng(7, 18);}
    var rain_x = scr_rng(4, 220); var rain_y = view_xview;
    scr_raindrop_create();
}

