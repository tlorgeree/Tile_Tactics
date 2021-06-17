/// @desc
function Animate_Obj_4_dir(){
	
	var _frames_per_dir = sprite_get_number(sprite)/4;
	show_debug_message(string(dir));
	var _animation_frame = ((sprite_get_number(sprite)/4) - 1) //4 IS NUMBER OF DIRECTIONS
	 
	
	image_index = (dir * _frames_per_dir) + floor((current_frame));
	if (current_frame + (dir * _frames_per_dir) < (((dir + 1) * _frames_per_dir)-1))
	{
		frame_tick++;
		if (frame_tick == (FPS/frame_rate))
		{
			current_frame ++;
			frame_tick = 0;
		}
	}
	else
	{
		frame_tick++;
		if (frame_tick == (FPS/frame_rate))
		{
			current_frame = 0;
			frame_tick = 0;
		}
	}
	
}