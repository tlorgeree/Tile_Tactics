/// @desc
function Player_State_Null(){
	if (activated == false)
	{
		if (position_meeting(x,y, obj_Parent_Tile))
		{
			with (obj_Parent_Tile)
			{
				var _add_charge = class;
			}
			if (charge == -1) charge[0] = _add_charge;
			
			else
			{
				var charge_n = array_length(charge);
				charge[charge_n] = _add_charge;
				show_debug_message(string(charge));
			}
			activated = true;
			show_debug_message(string(charge));
			
		}
	}
	
	else //Stop doing things
	{
		if !(position_meeting(x,y, obj_Parent_Tile))
		{
	
			activated = false;
		
		}
	}
	
	if ((state_test) && !(charge == -1))
	{
		var _state_to = charge[0];
		switch (_state_to)
		{
			case "fire": player_state = Player_State_Fire;
				break;
		
			case "null": player_state = Player_State_Null; 
				break;
			
			default: player_state = Player_State_Null;
				break;
		}
	}

}
	
function Player_State_Fire(){
	//Spawn Fireballs
	var _player = id;
	var _layer_id = layer_get_id("Tiles_Collision");
	var _map_id = layer_tilemap_get_id(_layer_id);
	
	if !(tilemap_get_at_pixel(_map_id, x+TILE_SIZE, y)){
		with (instance_create_layer(_player.x + TILE_SIZE, _player.y, "Instances_Entity", obj_Fireball_Projectile)){
			dir = RIGHT;
		}
	}
	
	if !(tilemap_get_at_pixel(_map_id, x-TILE_SIZE, y)){
		with (instance_create_layer(_player.x - TILE_SIZE, _player.y, "Instances_Entity", obj_Fireball_Projectile))
		{
			dir = LEFT;
		}
	}
	
	if !(tilemap_get_at_pixel(_map_id, x, y+TILE_SIZE)){
		with (instance_create_layer(_player.x , _player.y + TILE_SIZE, "Instances_Entity", obj_Fireball_Projectile))
		{
			dir = DOWN;
		}
	}
	
	if !(tilemap_get_at_pixel(_map_id, x, y-TILE_SIZE)){
		with (instance_create_layer(_player.x , _player.y - TILE_SIZE, "Instances_Entity", obj_Fireball_Projectile))
		{
			dir = UP;
		}
	}
	
	
	Remove_Charge();
	
	player_state = Player_State_Null;
}