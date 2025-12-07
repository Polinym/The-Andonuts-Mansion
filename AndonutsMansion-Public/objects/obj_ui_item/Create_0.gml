font = obj_ram.font;
font_wnd = obj_ram.font_wnd;
txt = "Use#Give#Look";
txt_wnd = scr_draw_menu(4, 3);
pos = 0; last_pos = 2;
ani_count = 0; ani_wait = 10;
ani_frame = 0;
delay = true;
depth = -302;

char = obj_ram.char;
item = obj_ram.menu_item;
targ = obj_ram.target_inst;
slot = obj_ram.menu_slot;
actor = obj_ui.actor;

close = false;
item_name = "";
ini = true;

script = obj_ram.script;
script_item = obj_ram.script_item;