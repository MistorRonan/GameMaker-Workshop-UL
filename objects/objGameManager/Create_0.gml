/// @description define global variables
/*
The persistant check means that the instance of the object transfers between rooms
and other game states. 
persistant objects should be used sparingly 
*/
global.lives = 3; 
global.score = 0;
//this sets the game seed to be random
randomize();