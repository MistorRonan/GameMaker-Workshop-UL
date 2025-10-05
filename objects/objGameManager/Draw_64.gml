/// @description Draw stats and shit

if(room!=rmTitleScreen)
{
	draw_text(0,0,$"Lives: {global.lives}");
	draw_text(0,16,$"Score: {global.score}");
}