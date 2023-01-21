/// @description Insert description here
// You can write your code in this editor
if (spawn_counter >= spawn_delay) {
	instance_create_depth(x, y, 1, obj_hazard_moving_down);
	spawn_counter = 0;
}
else {
	spawn_counter++;
}
