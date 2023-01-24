/// @description Insert description here
// You can write your code in this editor
if (counter > float_interval) {
	v_dir = -v_dir
	counter = 0;
}
else {
	counter++;
}

if (move_flip) {
	y += v_dir * v_spd;
	move_flip = false;
}
else {
	move_flip = true;
}

