/// @description Add Instances to Grid and Draw

//Check if grid exists
if(ds_exists(dsDepthgrid, ds_type_grid))
{

	//make ds_depthgrid local and accessable to our instances (all children of depth parent)
	var depthgrid = dsDepthgrid;
	
	//get the number of instances (number of children)
	var instNum = instance_number(oEntity);
	
	//resize the grid to the number of instances/children
	ds_grid_resize(depthgrid, 2, instNum);
	
	//declare a local variable we will increment with each loop when adding children to grid
	var yy = 0;
	
	//add all the instances/children to the grid, and their corresponding y value
	with(oEntity)
	{
		depthgrid[# 0,yy] = id;
		depthgrid[# 1,yy] = -y + (sprite_yoffset == 0) * (- sprite_height / 2) + depthOffset;
		yy++;
	}
	
	//sort the grid in ascending order (lowest Y will be at the top)
	ds_grid_sort(dsDepthgrid, 1, false);
	
	//use repeat to loop through the grid, starting at height = 0, drawing the instance,
	//and then incrementing yy for the next loop, to draw the next instance in the grid
	yy = 0; 
	repeat(instNum)
	{
		var instanceID = dsDepthgrid[# 0, yy];
		with(instanceID)
		{ 
			draw_sprite_ext(sprite_index,image_index,round(x),round(y),
			image_xscale,image_yscale,image_angle,image_blend,image_alpha) 
			
			DrawBBox();
		}
		
		
		yy++;
	}
	/*with(oDoor)
	{
		DrawBBox();	
	}*/
	//clear all cells of the grid to 0
	ds_grid_clear(dsDepthgrid, 0);
}