/// @description make camera follow player around
// 
 

if(instance_exists(obj_player))
{
var p1_x = obj_player.x;
var p1_y = obj_player.y;

x = lerp(x,p1_x,.2);
y = lerp(y,p1_y,.2);

camera_set_view_pos(view_camera[0],x - camera_width/2, y - camera_height/1.5);

}





