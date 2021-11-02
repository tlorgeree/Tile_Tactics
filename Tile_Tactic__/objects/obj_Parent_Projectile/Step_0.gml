/// @desc Animation
if (!create_bug) 
{
	Animate_Obj_4_dir();
}
else
{
	sprite_index = spr_Fireball_Projectile;
	image_index = (dir + sprite_get_number(sprite)/4) -1;
}

	
create_bug = false;