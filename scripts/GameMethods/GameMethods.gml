//here we store functions we make that help us :3

function RandomLevel()
{
	//here we use basic array functions
	//we're going to use tag_get_assets to get an array with all of our assets named "Level"
	//note this will probably crash if we tag a non-room with "Level"
	var _rm = tag_get_assets("Level");
	//we get the total level count using the length of the array
	var _total_levels = array_length(_rm);
	show_debug_message(_rm)
	//then we use that info to select a random level
	var _chosen_level_string = _rm[irandom_range(0,_total_levels-1)];
	var _chosen_level = asset_get_index(_chosen_level_string);
	if(_chosen_level>-1)
	{
		room_goto(_chosen_level);
	}
}