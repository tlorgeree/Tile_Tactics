/// @desc Initialize Player Variables
player = 1;
depth -= 1;
image_index = 0;
current_frame = image_index;
image_speed = 0;
dir = 0;
hp = 100;
atk = 10;
spd = 1;
weapon = -1;


player_state = Player_State_Null;
switch (player)
{
	case 1: sprite_default = spr_Player_1;
		break;
	case 2: sprite_default = spr_Player_2;
		break;
	
	default: sprite_default = spr_Player_1;


}
sprite = sprite_default;

activated = false;
