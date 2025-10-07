/// @description Handle input and every frame event
/*
The step event executes every frame and is where most game logic is stored

*/


key_left=keyboard_check(vk_left);
key_right=keyboard_check(vk_right);
key_jump=keyboard_check_pressed(vk_space);
//controls
key_dir = key_right - key_left;
hsp=walk_spd*key_dir;

//spike collision
if(place_meeting(x,y,objSpike))or(bbox_top>room_height)
{
	global.lives-=1;
	room_restart();
}
//goal collision
if(place_meeting(x,y,objGoal))
{
	global.score++;
	RandomLevel();
}
//ground detecting by checking for a wall 1 pixel below us
onground = place_meeting(x,y+1,objWall);

if(onground)
{
	//we stop any downward vertical movement if we're on the ground (but put this check here to allow for sudden upward movement)
	if(vsp>=0)
	{
		vsp=0;
	}
	if(key_jump)
	{
		vsp -= jump_height;	
	}
	
}
else
{
	vsp+=grv;
}



/*
'move_and_collide' is a function that has been added in recent versions of gamemaker
its good for small game-jam like projects, but for longer term projects or for more precise and advanced collissions and controls
it can be a bit limiting. For that you have to program the logic manually using 'place_meeting'
*/
move_and_collide(hsp,vsp,objWall,4,0,0,walk_spd,-1);