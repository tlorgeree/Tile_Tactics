/// @desc Menu Operations

if (room == rm_Main_Menu)
{
	if ((keyboard_check_pressed(vk_numpad1)) || 
		(keyboard_check_pressed(ord("1")))) room_goto(rm_Level_Test);
	if ((keyboard_check_pressed(vk_numpad2)) || 
		(keyboard_check_pressed(ord("2")))) show_message("No 2P mode yet.");
	if (keyboard_check_pressed(vk_backspace)) game_restart();
	if (keyboard_check_pressed(vk_escape)) game_end();
}
