/// @description Handle input and every frame event
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

onground = place_meeting(x,y+1,objWall);

if(onground)
{
	vsp=0;
	if(key_jump)
	{
		vsp -= jump_height;	
	}
	
}
else
{
	vsp+=grv;
}


move_and_collide(hsp,vsp,objWall);