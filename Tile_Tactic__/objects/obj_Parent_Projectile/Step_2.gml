/// @desc Move if global Move

if ((global.players_moved) && !(moved))
{
	switch (dir)
	{
		case 0: if (Collision_Move_Check(1, 0)) instance_destroy(); 
			break;
		
		case 1: if (Collision_Move_Check(0, -1)) instance_destroy();
			break;
		
		case 2: if (Collision_Move_Check(-1, 0)) instance_destroy();
			break;
		
		case 3: if (Collision_Move_Check(0, 1)) instance_destroy();
			break;
		
	}
	
	moved = true;
}
