/// @desc initialize variables

//REMOVE SPRITE OR IT WILL BUG
image_speed = 0;
dir = 0;
sprite = spr_Fireball_Projectile;
spd = 1;
frame_rate = 3;
frame_tick = 0;//dont change this
current_frame = image_index;
depth -= 1;
create_bug = true;//instance_crate() doesn't override Create variables:(
moved = false;
