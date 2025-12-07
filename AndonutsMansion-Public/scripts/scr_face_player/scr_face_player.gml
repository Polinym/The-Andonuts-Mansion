function scr_face_player(arg_actor)
{
	with (arg_actor)
	{
		if (type == "person") or (type == "ally")
		{
			switch (obj_player.dir)
			{
				case DOWN: dir = UP; break;	
				case RIGHT: dir = LEFT; break;	
				case UP: dir = DOWN; break;	
				case LEFT: dir = RIGHT; break;	
			}
			image_index = (dir*2) + ani_frame;
		}
	}
}