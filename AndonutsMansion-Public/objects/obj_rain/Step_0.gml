if (ini)
{
    for (var i = 0; i < scr_rng(96, 128); i++) 
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
    if (scr_pchance(3, 5)) {rain_wait = scr_rng(0, 2);}
    else {rain_wait = scr_rng(0, 1);}
    var rain_x = scr_rng(4, 220); var rain_y = __view_get( e__VW.YView, 0 );
    scr_raindrop_create();
}

