event_inherited();
if not ( (scr_flag(10)) or not (scr_flag(8)) )
{
	move_speed = 0.85;
	chase_distance = 72;
	name = "Zombie";
	char = obj_ram.char;
	caught_line = [255, 256, 257];
	warp_line = [349, 349, 349];
}
else {instance_destroy();}
lip_spr = spr_lips_zombie;