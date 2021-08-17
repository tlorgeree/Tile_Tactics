// Movement Variables
if (initialized)
{
	switch (player)
	{
		case 1: sprite_default = spr_Player_1;
			break;
		case 2: sprite_default = spr_Player_2;
			break;
	
		default: sprite_default = spr_Player_1;


	}
	sprite_index = sprite_default;
	sprite = sprite_index;
}

switch (player)
{
	
	case 1: move_left = keyboard_check_pressed(ord("A"));
		move_right = keyboard_check_pressed(ord("D"));
		move_up = keyboard_check_pressed(ord("W"));
		move_down = keyboard_check_pressed(ord("S"));
		state_test = keyboard_check_pressed(ord("F"));
		activate_charge = keyboard_check_pressed(ord("G"));
		break;
	
	case 2:  move_left = keyboard_check_pressed(ord("J"));
		move_right = keyboard_check_pressed(ord("L"));
		move_up = keyboard_check_pressed(ord("I"));
		move_down = keyboard_check_pressed(ord("K"));
		state_test = keyboard_check_pressed(ord("N"));
		activate_charge = keyboard_check_pressed(ord("M"));
		break;
		
	default: break;
	
	
}

if !(player = -1) // make sure player is initialized
{
	x_move = (move_right - move_left);
	y_move = (move_down - move_up);

	if (move_left || move_right)
	{
		if (x_move < 0) dir = 2;
		if (x_move > 0) dir = 0;
		image_index = dir + ANIMATION_MODIFIER;
		Collision_Move_Check(x_move, y_move);
		global.players_moved = true;
	
	}

	if (move_up || move_down)
	{
		if (y_move < 0) dir = 1;
		if (y_move > 0) dir = 3;
		image_index = dir + ANIMATION_MODIFIER;
		Collision_Move_Check(x_move, y_move);
		global.players_moved = true;
	}

	script_execute(player_state);
}


