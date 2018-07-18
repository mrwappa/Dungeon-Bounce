/// @description


LerpTarget = id;

myBlocks = array_create(23);
myDoors = array_create(4);

if(instance_number(oRoom) == 1)
{
	x = 0;
	y = 0;
	InstanceCreate(x,y,oPlayer);
}

enum DoorIndex 
	{ Right, Left, Up, Down}

//R
door = InstanceCreate(x + 156,y + 4,oRoomEntry);
if(instance_exists(door))
{
	door.image_xscale = 1;
	door.image_yscale = 2;
	door.originRoom = id;
	door.orientation = DoorIndex.Right;
}
myDoors[DoorIndex.Right] = door;
//U
door = InstanceCreate(x - 13, y - 119,oRoomEntry);
if(instance_exists(door))
{
	door.image_xscale = 2;
	door.image_yscale = 1;
	door.originRoom = id;
	door.orientation = DoorIndex.Up;
}
myDoors[DoorIndex.Up] = door;
//L
door = InstanceCreate(x - 172,y + 4,oRoomEntry);
if(instance_exists(door))
{
	door.image_xscale = 1;
	door.image_yscale = 2;
	door.originRoom = id;
	door.orientation = DoorIndex.Left;
}
myDoors[DoorIndex.Left] = door;
//D
door = InstanceCreate(x - 15,y + 134,oRoomEntry);
if(instance_exists(door))
{
	door.image_xscale = 2;
	door.image_yscale = 1;
	door.originRoom = id;
	door.orientation = DoorIndex.Down;
}
myDoors[DoorIndex.Down] = door;


var i = 0;

myBlocks[i++] = InstanceCreate(x-160,y-123,oPillarUpLeft);

myBlocks[i++] = InstanceCreate(x-160,y-77,oNTPillarUpLeft);

myBlocks[i++] = InstanceCreate(x-160,y-67,oPillarLeftM);

myBlocks[i++] = InstanceCreate(x-159,y-21,oDoorSideUp);

myBlocks[i++] = InstanceCreate(x-159,y-21,oDoorSideDown);

myBlocks[i++] = InstanceCreate(x-160,y+61,oPillarLeftM);

myBlocks[i++] = InstanceCreate(x-160,y+107,oNTPillarDownLeft);

myBlocks[i++] = InstanceCreate(x-160,y+119,oWallDownLeft);

myBlocks[i++] = InstanceCreate(x-37,y+122,oDoorDownRight);

myBlocks[i++] = InstanceCreate(x-37,y+122,oDoorDownLeft);

myBlocks[i++] = InstanceCreate(x+39,y+119,oWallDownRight);

myBlocks[i++] = InstanceCreate(x+144,y+105,oNTPillarDownRight);

myBlocks[i++] = InstanceCreate(x+144,y+60,oPillarRightM);

myBlocks[i++] = InstanceCreate(x+147,y-22,oDoorSideDown);

myBlocks[i++] = InstanceCreate(x+147,y-22,oDoorSideUp);

myBlocks[i++] = InstanceCreate(x+144,y-68,oPillarRightM);

myBlocks[i++] = InstanceCreate(x+144,y-76,oNTPillarUpRight);

myBlocks[i++] = InstanceCreate(x+144,y-122,oPillarUpRight);

myBlocks[i++] = InstanceCreate(x+41,y-128,oWallUpRight);

myBlocks[i++] = InstanceCreate(x-39,y-128,oDoorUpRight);

myBlocks[i++] = InstanceCreate(x-39,y-128,oDoorUpLeft);

myBlocks[i++] = InstanceCreate(x-144,y-128,oWallUpLeft);

ground = InstanceCreate(x - 156,y - 92,oPixel);
with(ground)
{
	image_blend = make_color_rgb(145,176,154);
	image_xscale = 320 - 8;
	image_yscale = 256 - 33;
	depthOffset = 9999;
}

myBlocks[i++] = ground;


/*
//1
block = InstanceCreate(x-160,y-128,oBlock);
block.image_xscale = 9;
block.image_yscale = 1;
myBlocks[0] = block;

//2
block = InstanceCreate(x-160,y-112,oBlock);
block.image_xscale = 1;
block.image_yscale = 6;
//ds_list_add(myBlocks,block);
myBlocks[1] = block;

//3
block = InstanceCreate(x-160,y+16,oBlock);
block.image_xscale = 1;
block.image_yscale = 6;
myBlocks[2] = block;

//4
block = InstanceCreate(x-160,y+112,oBlock);
block.image_xscale = 9;
block.image_yscale = 1;
myBlocks[3] = block;

//5
block = InstanceCreate(x+16,y+112,oBlock);
block.image_xscale = 9;
block.image_yscale = 1;
myBlocks[4] = block;

//6
block = InstanceCreate(x+144,y+16,oBlock);
block.image_xscale = 1;
block.image_yscale = 6;
myBlocks[5] = block;

//7
block = InstanceCreate(x+144,y-112,oBlock);
block.image_xscale = 1;
block.image_yscale = 6;
myBlocks[6] = block;

//8
block = InstanceCreate(x+16,y-128,oBlock);
block.image_xscale = 9;
block.image_yscale = 1;
myBlocks[7] = block;*/