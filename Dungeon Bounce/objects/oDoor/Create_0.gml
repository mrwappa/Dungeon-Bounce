/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
enum DoorState 
	{Open, Closed}

currentState = DoorState.Open;
prevState = -1;

colBounds = sprite_duplicate(sprite_index);