#macro view_xview __view_get( e__VW.XView, 0 )
#macro view_yview __view_get( e__VW.YView, 0 )

#macro DOWN 0
#macro RIGHT 1
#macro UP 2
#macro LEFT 3

#macro ITEM_BAT 1
#macro ITEM_TEDDY 2
#macro ITEM_LASER 3
#macro ITEM_BANANA 4
#macro ITEM_APPLE 5
#macro ITEM_MUSHROOM 6
#macro ITEM_CAN 7

function set_item_names()
{
	items[ITEM_BAT] = "Legendary Bat";
	items[ITEM_TEDDY] = "Teddy Bear";
	items[ITEM_LASER] = "Gaia Beam";
	items[ITEM_BANANA] = "Banana";
	items[ITEM_APPLE] = "Apple";
	items[ITEM_MUSHROOM] = "Mushroom";
	items[ITEM_CAN] = "Empty Can";
}