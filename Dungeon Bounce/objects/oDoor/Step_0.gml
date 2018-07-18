/// @description Insert description here
// You can write your code in this editor
if(currentState == DoorState.Closed)
{
	imgSpeed = -50;
	if(imgIndex <= 0)
	{
		imgIndex = 0;	
	}
}
else if(currentState == DoorState.Open)
{
	
	
	imgSpeed = 50;
	if(imgIndex >= image_number -1)
	{
		imgIndex = image_number -1;	
		imgSpeed = 0;
	}
}

if(keyboard_check_pressed(ord("O")))
{
	with(oDoor)
	{
		prevState = currentState;
		currentState = DoorState.Open;	
	}
}
if(keyboard_check_pressed(ord("P")))
{
	with(oDoor)
	{
		prevState = currentState;
		currentState = DoorState.Closed;	
	}
}	