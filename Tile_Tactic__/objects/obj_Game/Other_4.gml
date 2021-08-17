/// @desc Hide Collision Tiles; Iniutialize Players


if !((room == rm_Main_Menu) || (room == rm_End_Menu))
{
	// Hiding Collision Tiles
	var _collision_id = layer_get_id("Tiles_Collision");
	layer_set_visible(_collision_id, false);
	
	
	
	//Establishing Players
	var _players = instance_number(obj_Parent_Player);
	show_debug_message("There are " + string(_players) + " players.")
	var _player_number = Random_Number_Array_Nonrepeated(_players, 1, _players);
	
	for (var i = 0; i < _players; i++)
    {
		with (instance_find(obj_Parent_Player, i)) 
		{
			show_debug_message("Found " + string(id[i]));
			show_debug_message("instance id meets condition: " + string(id[i].entity_type == "player"))
			show_debug_message("instance id entity type is " + string(id[i].entity_type));
			if (id[i].entity_type == "player")
			{
				id[i].initialized = true;
				player = _player_number[i];
				show_debug_message("Player number is now: " + string(id[i].player));
			}
			
		}
    }
	
	

}

