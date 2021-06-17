/// @desc Collision Scripts
function Collision_Move_Check(_x_move, _y_move){
	//Declare Locals
	var _x = x;
	var _y = y;
	var _collided = false;
	var _speed = self.spd;
	var _layer_id = layer_get_id("Tiles_Collision");
	var _map_id = layer_tilemap_get_id(_layer_id);
	var _move_dir_x = _x_move * TILE_SIZE;
	var _move_dir_y = _y_move * TILE_SIZE;
	
//Horizontal Check
	for (var i = 1; i <= _speed; i++)
	{
		_x += _move_dir_x;
		if (tilemap_get_at_pixel(_map_id, _x, _y))
		{
			_x -= _move_dir_x;
			_collided = true;
			break;
		}
	}
	
//Vertical Check
	for (var i = 1; i <= _speed; i++)
	{
		_y += _move_dir_y;
		if (tilemap_get_at_pixel(_map_id, _x, _y))
		{
			_y -= _move_dir_y;
			_collided = true;
			break;
		}
	}
	
	x = _x;
	y = _y;
	return _collided;
	
}