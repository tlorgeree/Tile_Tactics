// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Random_Number_Array_Nonrepeated(count, range_lower, range_upper)
{
	var array;
	
	for (var i = 0; i <= (count-1); i++)
	{
		array[i] = irandom_range(range_lower, range_upper);
		if ((i != 0) && (array[i] == array[(i-1)])) i--;
		
		
	}
	
	var debug = array_length(array);
	for (var i = 0; i < debug; i++)
	{
		show_debug_message("Number" + string(i) + " is " + string(array[i]));
	}
	
	return array;
}