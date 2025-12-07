function scr_msg_cc2()
{
	// CC: ~
	pos += 1;
	var c2 = string_char_at(work_txt, pos);
	switch (c2)
	{
		case "A":
			var tmp_char = obj_ram.actor_a;
			name = tmp_char.name;
			tmp_char.talking = true;
			break;
		case "B":
			var tmp_char = obj_ram.actor_b;
			name = tmp_char.name;
			tmp_char.talking = true;
			break;
		case "C":
			var tmp_char = obj_ram.actor_c;
			name = tmp_char.name;
			tmp_char.talking = true;
			break;
		case "0": name = ""; break;
		case "1": 
		case "N":
			name = "Ness"; 
			with (obj_player) {talking = (index == 0);}
			with (par_actor) {talking = (index == 0);}
			break;
		case "2": 
		case "P":
			name = "Paula"; 
			with (obj_player) {talking = (index == 1);}
			with (par_actor) {talking = (index == 1);}
			break;
		case "3": 
		case "J":
			name = "Jeff"; 
			with (obj_player) {talking = (index == 2);}
			with (par_actor) {talking = (index == 2);}
			break;
		case "c": 
			name = char.name; 
			if (scr_flag(53)) {name = "Ness";}
			obj_player.talking = true;
			obj_ram.head = 0;
			break;
		case "t": 
			name = targ.name; 
			if (targ != -1)
			{
				targ.talking = true;
			}
			break;
		case "!":
			with (targ)
			{
				icd(x, y - 16, depth-1, obj_exclaim);	
			}
			break;
		case "d":
			name = "Dungeon key";
			break
		case "V":
			name = "Venus";
			if (ie(obj_venus))
			{
				obj_venus.talking = true;	
			}
			break;
		case "b":
			name = "Eyeball brain: ";
			break;
									
	}
	if (name != "") {name += ": <"; suffix = ">";}
}