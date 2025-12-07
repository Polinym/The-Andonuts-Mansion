scr_camera();
scr_depth_rel();
mask_index = spr_ness;
head_lips = [spr_lips_ness3, spr_lips_paula3, spr_lips_jeff3];

image_speed = 0;

mercy_count = 15;

sfl_count = 0;
sfl_wait = 59;
check_sfl = true;

state = "free";
char = obj_ram.char;
name = char.name;
index = char.index;
sprite_index = char.spr;
dark_spr = char.dark_spr;
dir = 0;
last_dir = -1;
scr_actor_cuts_ini();
ani_wait = 4;
l_col = layer_tilemap_get_id("l_col");
talking = false;
delay = false;
ui = obj_ui;
mouse_face = false;
flicker = false;

depth = -5;

if (obj_ram.warped)
{
	with (obj_ram)
	{
		if (used_door)
		{
			scr_snd(snd_eb_doorclose);
			used_door = false;
		}
		warped = false;
	}
	dir = obj_ram.goto_dir;
	image_index = (dir*2);
	var tmp_pt = obj_ram.goto_pt;
	if (tmp_pt < 21)
	{
	tmp_pt = asset_get_index("obj_p" + string(tmp_pt));
	x = tmp_pt.x; y = tmp_pt.y;
	}
	else
	{
		with (par_point)
		{
			if (obj_ram.goto_pt == pt)
			{
				obj_player.x = x;
				obj_player.y = y;
			} else {instance_destroy();}
		}
	}
}
else
if (obj_ram.warp_kid)
{
	x = obj_ram.warp_x;
	y = obj_ram.warp_y;
	dir = obj_ram.warp_dir;
	obj_ram.warp_kid = false;	
}
if (obj_ram.respawn)
{
	x = obj_ram.last_x;
	y = obj_ram.last_y;
	dir = obj_ram.last_dir;
	obj_ram.respawn = false;
}

if (not scr_flag(53))
{
	for (var i = 0; i < 3; i++)
	{
		var tmp_char = obj_ram.party[i];
		if (tmp_char != char)
		{
			var tmp_hash = tmp_char.hash;
			if (tmp_hash[0] == room)
			{
				var tmp_inst = icd(tmp_hash[1], tmp_hash[2], -1, obj_actor_ally);
				tmp_inst.name = tmp_char.name;
				tmp_inst.dir = tmp_hash[3];
				tmp_inst.char = tmp_char;
				with (tmp_inst) {image_index = (dir*2);}
				tmp_inst.sprite_index = tmp_char.spr;
				tmp_inst.dark_spr = tmp_char.dark_spr;
				tmp_inst.index = tmp_char.index;
			}
		}
	}
}

var tmp_cuts = obj_ram.cuts_obj;
if (tmp_cuts != -1)
{
	scr_open(tmp_cuts);
	obj_ram.cuts_obj = -1;	
	state = "cuts";
}
mashroom = false;
scr_plr_bgm();
stuck_check = true;

lip_spr = spr_lip;
switch (sprite_index)
{
	case spr_paula_adult:	
	case spr_paula_dress:	
	case spr_paula_diva:	
		lip_spr = spr_lips_diva;
		break;
}