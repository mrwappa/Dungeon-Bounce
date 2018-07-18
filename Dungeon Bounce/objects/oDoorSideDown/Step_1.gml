/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(currentState == DoorState.Closed)
{
	sprite_collision_mask(colBounds,false,2, 0, 40, 11, 81, 1, 0);
	sprite_index = colBounds;
}
else if(currentState == DoorState.Open)
{
	sprite_collision_mask(colBounds,false,2, 0, 60, 11, 81, 1, 0);
	sprite_index = colBounds;
}