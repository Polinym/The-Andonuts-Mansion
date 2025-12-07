function scr_mob_btns()
{
	var btn = icd(1776-100, 576, -9999, obj_mob_btn);
	btn.key = vk_space;
	var btn = icd(1632-100, 736, -9999, obj_mob_btn);
	btn.key = vk_lshift;
	//var btn = icd(1488, 576, -9999, obj_mob_btn);
	//btn.key = ord("Z");
	//var btn = icd(1632, 400, -9999, obj_mob_btn);
	//btn.key = ord("X");

	var btn = icd(144, 416, -9999, obj_mob_btn);
	btn.key = vk_up;
	var btn = icd(288, 576, -9999, obj_mob_btn);
	btn.key = vk_right;
	var btn = icd(144, 736, -9999, obj_mob_btn);
	btn.key = vk_down;
	var btn = icd(16, 576, -9999, obj_mob_btn);
	btn.key = vk_left;

	var btn = icd(144, 100, -9999, obj_mob_btn);
	btn.key = ord("Z");
	//var btn = icd(1632, 100, -9999, obj_mob_btn);
	//btn.key = ord("C");

	with (obj_mob_btn)
	{
		y += -1024;
	}
}