/// @desc Move if global Move

if (global.players_moved)
{
	switch (dir)
	{
		case 0: Collision_Move_Check(1, 0);
			if (Collision_Move_Check(1, 0)) instance_destroy(); 
			break;
		
		case 1: Collision_Move_Check(0, -1); 
			if (Collision_Move_Check(0, -1)) instance_destroy();
			break;
		
		case 2: Collision_Move_Check(-1, 0); 
			if (Collision_Move_Check(-1, 0)) instance_destroy();
			break;
		
		case 3: Collision_Move_Check(0, 1); 
			if (Collision_Move_Check(0, 1)) instance_destroy();
			break;
		
	}
	
}
