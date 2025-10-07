/// @description Draw stats and shit
/*
the Draw GUI draws an overlay on to the screen which can be used for things
like HUDs. The new UI layer can be used for similar things. 

*/
if(room!=rmTitleScreen)
{
	draw_text(0,0,$"Lives: {global.lives}");
	draw_text(0,16,$"Score: {global.score}");
}