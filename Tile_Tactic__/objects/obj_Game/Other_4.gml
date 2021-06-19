/// @desc Hide Collision Tiles
if !((room == rm_Main_Menu) || (room == rm_End_Menu))
{
	var _collision_id = layer_get_id("Tiles_Collision");
	layer_set_visible(_collision_id, false);
}