/// @description

//checked here instead of create event to make sure that 
//originRoom is passed onto the occupying instance
if(checkOccupied)
{
	roomEntry = collision_rectangle(x-20,y-20,x+20,y+20,oRoomEntry,false,true);
	if(roomEntry)
	{
		roomEntry.linkerRoom = originRoom;
		instance_destroy();
	}
	checkOccupied = false;
}

if(place_meeting(x,y,oPlayer) and linkerRoom == noone)
{
	if(orientation == EntryOrientation.Up)
	{
		linkerRoom = InstanceCreate(originRoom.x,originRoom.y - RoomHeight,oRoom);
	}
	else if(orientation == EntryOrientation.Right)
	{
		linkerRoom = InstanceCreate(originRoom.x + RoomWidth,originRoom.y,oRoom);
	}
	else if(orientation == EntryOrientation.Down)
	{
		linkerRoom = InstanceCreate(originRoom.x,originRoom.y + RoomHeight,oRoom);
	}
	else if(orientation == EntryOrientation.Left)
	{
		linkerRoom = InstanceCreate(originRoom.x - RoomWidth ,originRoom.y,oRoom);
	}
	
	DeactivateBlocks(originRoom);
}

if(place_meeting(x,y,oPlayer) and prevPlayerCol == noone)
{ 
	if(orientation == EntryOrientation.Up)
	{
		if(oPlayer.y > y)
		{
			LerpTarget = linkerRoom.id;
			DeactivateBlocks(originRoom);
			ActivateBlocks(linkerRoom);
		}
		else
		{
			LerpTarget = originRoom.id;
			DeactivateBlocks(linkerRoom);
			ActivateBlocks(originRoom);
		}
	}
	else if(orientation == EntryOrientation.Right)
	{
		if(oPlayer.x < x)
		{
			LerpTarget = linkerRoom.id;
			DeactivateBlocks(originRoom);
			ActivateBlocks(linkerRoom);
		}
		else
		{
			LerpTarget = originRoom.id;
			DeactivateBlocks(linkerRoom);
			ActivateBlocks(originRoom);
		}
	}
	else if(orientation == EntryOrientation.Down)
	{
		if(oPlayer.y < y)
		{
			LerpTarget = linkerRoom.id;
			DeactivateBlocks(originRoom);
			ActivateBlocks(linkerRoom);
		}
		else
		{
			LerpTarget = originRoom.id;
			DeactivateBlocks(linkerRoom);
			ActivateBlocks(originRoom);
		}
	}
	else if(orientation == EntryOrientation.Left)
	{
		if(oPlayer.x > x)
		{
			LerpTarget = linkerRoom.id;
			DeactivateBlocks(originRoom);
			ActivateBlocks(linkerRoom);
		}
		else
		{
			LerpTarget = originRoom.id;
			DeactivateBlocks(linkerRoom);
			ActivateBlocks(originRoom);
		}
	}
}
prevPlayerCol = instance_place(x,y,oPlayer);