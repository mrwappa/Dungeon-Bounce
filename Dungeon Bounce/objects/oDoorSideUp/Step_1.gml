/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(currentState == DoorState.Closed)
{
	sprite_collision_mask(colBounds,0,2, 0, 0, 11, 47, 1, 0);
	
	sprite_index = colBounds;
}
else if(currentState == DoorState.Open)
{
	sprite_collision_mask(colBounds,0,2, 0, 0, 11, 20, 1, 0);
	sprite_index = colBounds;
}