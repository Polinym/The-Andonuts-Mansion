event_inherited();
name = "Dr. Andonuts's sports car";
look_line = [1135, 1135, 1135];
talk_line = [1138, 1138, 1138];
take_line = [1137, 1137, 1137];
use_line = [1137, 1137, 1137];
use_item_line = [1136, 1136, 1136];
if (not scr_item_has(char, item_Camshaft))
{
	use_line = [1139, 1139, 1139];
	use_item_line = [1139, 1139, 1139];
}
else
{
	scr_use_add(item_Camshaft, [1140, 1140, 1140], true);	
}
fixed = scr_any_check(hash);
is_running = false;