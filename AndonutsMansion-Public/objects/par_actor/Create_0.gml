scr_depth_rel();
name = "";
image_speed = 0;
animate = true;
scr_actor_cuts_ini();
type = "none";
dir = 0;
item = -1;
hash = scr_actor_hash();
look_line = [-1, -1, -1];
talk_line = [5, 5, 5];
take_line = [2, 2, 2];
use_line = [1, 1, 1];
use_item_line = [-1, -1, -1];
key_line = [-1, -1, -1];
gives = [32] = [];
give_count = 0;
uses[32] = [];
use_count = 0;
char = -1;
face_on_talk = false;
lip_spr = -1;
cuts = ["", -1, -1];
look_prefix = "at";
use_prefix = " on ";
dark_spr = -1;
door_sound = -1;
char = obj_ram.char;
flicker = false;

dest = -1;
dest_dir = -1;
dest_pt = -1;
dark_spr = -1;
can_talk = false;
index = -1;

look_update = false;
talk_update = false;
take_update = false;
use_update = false;
give_update = false;
use_item_update = false;
give_item_update = false;
ani_update = false;
cmd_lock = false;

sub_ani = "";
sub_ani_count = 0;
sub_ani_wait = 7;

start_x = x;
start_y = y;

jump = false;
jump_count = 0; jump_wait = 10;
jump_spd = -3;
jump_ini = true;
jump_grav = 0.6;
vanish = false;
mashroom = false;

float = false;
float_count = 0; float_wait = 15;
float_state = 0;

warp_line = [-1, -1, -1];
shaking = false;
shake = false;
mouse_face = false;