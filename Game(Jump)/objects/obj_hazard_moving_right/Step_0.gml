/// @description Insert description here
// You can write your code in this editor
x += move_speed;
if (count >= lifespan) {
	instance_destroy();
}
else {
	count++;
}
