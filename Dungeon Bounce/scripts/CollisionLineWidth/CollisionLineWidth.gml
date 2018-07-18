/// @description CollisionLineWidth
/// @arg x1
/// @arg y1
/// @arg x2
/// @arg y2
/// @arg width
/// @arg obj
//Requires an object with a sprite that is 1px wide and at least 32 px tall with a middle left origin called obj_sensor.  Or whatever.
//Create and update the sensor.

var _x1=argument[0];
var _y1=argument[1];
var _x2=argument[2];
var _y2=argument[3];
var _w=argument[4] 
var _obj=argument[5];

if(!instance_exists(oRecSensor)) {instance_create_depth(0,0,0,oRecSensor);}

oRecSensor.x=_x1;
oRecSensor.y=_y1;
oRecSensor.image_angle = point_direction(_x1,_y1,_x2,_y2);
oRecSensor.image_xscale = point_distance(_x1,_y1,_x2,_y2) / sprite_get_width(oRecSensor.sprite_index);
oRecSensor.image_yscale = _w / sprite_get_height(oRecSensor.sprite_index);

return place_meeting(round(_obj.x),round(_obj.y),oRecSensor);