/// @desc Initialize Player Variables
player = -1;
initialized = false;
entity_type = "player";
depth -= 1;
image_index = 0;
current_frame = image_index;
image_speed = 0;
frame_rate = 0;
dir = 0;
hp = 100;
atk = 10;
spd = 1;
charge = -1;
charge_max = 1;

player_state = Player_State_Null;
/*switch (player)
{
	case 1: sprite_default = spr_Player_1;
		break;
	case 2: sprite_default = spr_Player_2;
		break;
	
	default: sprite_default = spr_Player_1;


}
sprite_index = sprite_default;
sprite = sprite_index; */

activated = false;
