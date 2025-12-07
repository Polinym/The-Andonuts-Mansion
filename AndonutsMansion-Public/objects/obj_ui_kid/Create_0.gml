font_wnd = obj_ram.font_wnd;
font = obj_ram.font;

txt_wnd = scr_draw_menu(4, 3);
txt = "Ness#Paula#Jeff";
names = ["Ness", "Paula", "Jeff"];

pos = 0;
last_pos = 2;

ani_count = 0; ani_wait = 10;
ani_frame = 0;
done = false;
depth = -302;