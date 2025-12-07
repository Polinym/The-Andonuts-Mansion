function scr_camera()
{
	var cam = camera_create_view(0, 0, 256, 224, 0, obj_player, -1, -1, 256, 224);
	view_wport[0] = 1024;
	view_hport[0] = 896;

	view_camera[0] = cam;
	view_visible[0] = true;
	view_enabled[0] = true;
}