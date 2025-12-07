pos_x = x + 8; x_spread = 32;
pos_y = y + 8; y_spread = 32;
x_min = pos_x - x_spread; x_max = pos_x + x_spread;
y_min = pos_y - y_spread; y_max = pos_y + y_spread;
dust_count = 0;
var ini_count = scr_rng(10, 20);
for (var i = 0; i < ini_count; i++)
{
	var tmp_dust = icd(scr_rng(x_min, x_max), scr_rng(y_min, y_max), -6, obj_ginerva_dust);
	tmp_dust.spawner = id;
	dust_count++;
}
pause_count = 0;
pause_wait = 3;