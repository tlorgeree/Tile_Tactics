function Remove_Charge()
{
	var _charge_temp;
	var _charge_len = array_length(charge);
	if (_charge_len <= 1) charge = -1;
	else
	{
		
		for (var i = 1; i < _charge_len; ++i;)
		{
			_charge_temp[i-1] = charge[i];
		
		}
		charge = _charge_temp;
	}
	
	show_debug_message(string(charge));
}