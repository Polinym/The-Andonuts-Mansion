function scr_mob_rooms()
{
	for (var i = real(room_first); i < real(room_last)+1; i++)
	{
		room_set_view_enabled(i, true);
		room_set_viewport(i, 0, true, 448, 64, 1024, 896);
		//if (i == rm_ini) {var tmp_cam = camera_create_view(0, 0, 1024, 896);}
		//else {var tmp_cam = camera_create_view(0, 0, 256, 224);}
		var tmp_cam = camera_create_view(0, 0, 256, 224);
		camera_set_view_target(tmp_cam, obj_player);
		camera_set_view_border(tmp_cam, 256, 224);
		room_set_camera(i, 0, tmp_cam);
	
		room_set_viewport(i, 1, true, 0, 0, 448, 1024);
		room_set_camera(i, 1, camera_create_view(0, 0, 0, 0));
	
		room_set_viewport(i, 2, true, 1472, 0, 448, 1024);
		room_set_camera(i, 2, camera_create_view(0, 0, 0, 0));


	}
}