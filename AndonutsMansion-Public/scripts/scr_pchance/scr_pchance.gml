/// @description scr_pchance(numerator, denominator)
/// @param numerator
/// @param  denominator
function scr_pchance(argument0, argument1) 
{
	//if (argument1 < argument0) {return true;}
	/*
	if (argument0 == 0) {return false;}
	tmp_pchance_nmb = scr_rng(1, argument1);
	if (argument0 < (tmp_pchance_nmb)) || (argument0 == tmp_pchance_nmb) {return true;}
	else {return false;}
	*/
	return random(1) < argument0/argument1;
}
