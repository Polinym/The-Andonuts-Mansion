event_inherited();
name = "Wall opening";
look_prefix = "through";
if (scr_flag(8))
{
	look_line = [249, 249, 249];
	use_line = [249, 249, 249];
}
else
{
	look_line = [246, 246, 246];
	talk_line = [247, -1, -1];
	use_line = [246, 246, 246];
	scr_use_add(item_TeddyBear, [-1, 248, -1], false);
}