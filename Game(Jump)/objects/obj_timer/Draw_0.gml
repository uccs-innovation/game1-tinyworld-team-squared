/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_camera)) {
	timer_pos_x = obj_camera.x + x_offset;
	timer_pos_y = obj_camera.y + y_offset;
	draw_set_color(c_red);
	draw_text(timer_pos_x, timer_pos_y, timer / 60)
}
if (room == rm_victory)
{
	draw_text(550, 300, string("Time:") + string(timer/60))
}