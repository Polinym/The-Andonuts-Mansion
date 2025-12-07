function scr_actor_talk()
{
	if (talking)
	{
		if (talk_count < talk_wait) {talk_count++;}
		else
		{
			talk = not talk;
			talk_count = 0;	
		}
	} else {talk = false;}
}