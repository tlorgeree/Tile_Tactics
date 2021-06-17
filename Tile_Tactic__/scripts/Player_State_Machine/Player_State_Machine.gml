/// @desc
function Player_State_Null(){
	var _state_to = player_state;
	if (activated == false)
	{
		if (position_meeting(x,y, obj_Parent_Tile))
		{
		
			//Do stuff
			with (obj_Parent_Tile)
			{
				_state_to = class;
			}
			activated = true;
			
		}
	}
	
	else //Stop doing things
	{
		if !(position_meeting(x,y, obj_Parent_Tile))
		{
	
			activated = false;
		
		}
	}
	
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
	
function Player_State_Fire(){
	//Spawn Fireballs
	var _player = self;
	
	with (instance_create_layer(_player.x + TILE_SIZE, _player.y, "Instances_Entity", obj_Fireball_Projectile))
	{
		dir = RIGHT;
	}
	
	with (instance_create_layer(_player.x - TILE_SIZE, _player.y, "Instances_Entity", obj_Fireball_Projectile))
	{
		dir = LEFT;
	}
	
	with (instance_create_layer(_player.x , _player.y + TILE_SIZE, "Instances_Entity", obj_Fireball_Projectile))
	{
		dir = DOWN;
	}
	
	with (instance_create_layer(_player.x , _player.y - TILE_SIZE, "Instances_Entity", obj_Fireball_Projectile))
	{
		dir = UP;
	}
	
	
	
	
	player_state = Player_State_Null;
}