randomize();
//scr_assets_hash();
//scr_loot_ini();
//Icons start at 128
var i;

dbg = false;

items[255] = -1;
items_count[255] = 0;
flags[255] = 0;
for (i = 0; i < 256; i++)
{
	items[i] = -1;
	items_count[i] = 0;
	flags[i] = 0;
}
flag_update = false;
set_item_names();

ness = scr_open(obj_Ness);
paula = scr_open(obj_Paula);
jeff = scr_open(obj_Jeff);

party = [ness, paula, jeff];
locked = [false, false, true];

script = scr_open(obj_script);
script_cuts = scr_open(obj_script_cuts);
script_item = scr_open(obj_script_item);
//char = paula;
char = jeff;

money = 10;

room_name = "";
fought[128] = 0;
fought_count = 0;


text_done = false;
menu_done = false;
menu_done2 = false;
move_done = false;
target_done = false;

menu_slot = -1;
menu_item = -1;
menu_val = 0;
menu_mode = 0;
menu_use_name = "";
menu_char = -1;
menu_targ = -1;
menu_mode = 0;
menu_txt = "";
target_char = -1;
menu_area_name = "";


//keeper = scr_open(obj_keeper);

wtw = false;

glow = 0;

file_index = 0;

paused = false;

blip_sound = -1;
death_count = 0;

scr_hash_ini();

mansion[3] = false;
mansion[2] = false;
mansion[1] = false;
mansion[0] = false;

use_newcol = false;
col_layer = -1;
last_room = -1;
warped = false;
respawn = false;
dest = -1;
goto_pt = 1;
goto_dir = -1;
last_x = 0;
last_y = 0;
warp_kid = false;
last_dir = -1;

yesno = false;
yesno_done = false;
yes_txt = "";

no_txt = "";
cuts = false;
cuts_actors = 0;
cuts_obj = -1;

mute = false;

mush_blends = [c_navy, c_fuchsia, c_red, c_purple];

used_door = false;

sound = -1;
bgm = -1;
music = -1;
max_ambient = 9;
ambient[max_ambient] = -1;
ambient_map[max_ambient] = -1;
ambient_audio[max_ambient] = -1;
for (var i = 0; i < max_ambient - 1; i++) 
{ambient[i] = -1; ambient_map[i] = -1; ambient_audio[i] = -1;}

ambient_map[0] = obj_ambient_rain; 
ambient_audio[0] = snd_ambient_rain;

ambient_map[1] = obj_ambient_rain_inside; 
ambient_audio[1] = snd_ambient_rain_inside;

ambient_map[2] = obj_ambient_wind; 
ambient_audio[2] = snd_ambient_wind;


volume_sound = 0.75;
volume_music = 0.5;
volume_bgm   = 0.35;
volume_ambient = 0.2;

stat_names[6] = "Maximum MP";
stat_names[5] = "Maximum HP";
stat_names[4] = "agility";
stat_names[3] = "courage";
stat_names[2] = "wisdom";
stat_names[1] = "defense";
stat_names[0] = "strength";

stat_inc[7] = 0;
for (i = 0; i < 7; i++)
{
	stat_inc[i] = 0;
}

enc_steps_to = -1;
enemy = -1;

btl_user = -1;
btl_targ = -1;

talking = false;

cheat = ["H", "A", "R", "U"];
cheat_state = 0;


var ord_space = ord(" ");
var ord_0 = ord("0");

font = font_add_sprite(spr_font, ord_space, true, 1);
font_title = font_add_sprite(spr_font_title, ord_space, false, 0);
font_saturn = font_add_sprite(spr_font_saturn, ord_space, true, 1);
font_wnd = font_add_sprite(spr_menus, ord_0, false, 0);

area_name = "";

target_inst = -1;

msg_char = -1;
msg_targ = -1;
msg_item = -1;

actor_a = -1;
actor_b = -1;
actor_c = -1;
no_new_kid = false;
fow = false
fow_was_on = false;
flashlight = false;
kids_selected = 0;


warp_line = -1;
show_player_again = false;

char = ness;
ui = scr_open(obj_ui);
fridge_actor = obj_actor_pepsc;
microwave_actor = 0;
cmd_lock = false;
new_bgm = -1;
cd_player = 0

save_name = "larc.fe";
head = 0;

frames = 0;
minutes = -1;
seconds = -1;

var tmp_file = "tmp.txt";
if (file_exists(tmp_file))
{
	file_copy(tmp_file, "cache/" + tmp_file);
	file_delete(tmp_file);
}

last_fow = false;
mobile = false;
lite = false;
//scr_mob_ini();
dbg = true;
warped = true;
goto_pt = 8;
room_goto(rm_attic);