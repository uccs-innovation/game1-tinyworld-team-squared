/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player)) {
	if (obj_player.y > self.y) {
		triggered = false;	
	}
	if (collision_rectangle(x - x_offset, y + y_offset, x + x_offset, y - y_offset, obj_player, false, true)) {
		triggered = true;
	}
}