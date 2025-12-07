if (show_cover)
{
	if (cover_alpha < 1) {cover_alpha += 0.01;}
}
else 
{
	if (cover_alpha > 0) {cover_alpha += -0.05;}
}

if (show_glow)
{
	if (glow_alpha < 0.5) {glow_alpha += 0.05;}
}
else
{
	if (glow_alpha > 0) {glow_alpha += -0.05;}	
}