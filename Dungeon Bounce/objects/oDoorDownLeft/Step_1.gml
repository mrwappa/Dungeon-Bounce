/// @description Insert description here
// You can write your code in this editor

event_inherited();

if(currentState == DoorState.Closed)
{
	sprite_collision_mask(colBounds,0, 2, 0, 8, 37, 11, 1, 0);
	 
	sprite_index = colBounds;
}
else if(currentState == DoorState.Open)
{
	sprite_collision_mask(colBounds,0, 2, 0, 8 , 19, 11, 1, 0);
	sprite_index = colBounds;
}

