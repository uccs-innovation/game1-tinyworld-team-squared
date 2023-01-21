/// @description Insert description here
// You can write your code in this editor

x = mouse_x;
y = mouse_y;
dist = distance_to_object(obj_player);
hsp = 0;
vsp = 0;

if (dist > MAX_DIST_FROM_PLAYER) {
	dir = point_direction(x, y, obj_player.x, obj_player.y);
	speed = dist - MAX_DIST_FROM_PLAYER;
	direction = dir;
	hsp = hspeed;
	vsp = vspeed;
	speed = 0;
	direction = 0;
}

x += hsp;
y += vsp;