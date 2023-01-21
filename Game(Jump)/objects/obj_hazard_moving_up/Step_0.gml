/// @description Insert description here
// You can write your code in this editor
y += -move_speed;
if (count >= lifespan) {
	instance_destroy();
}
else {
	count++;
}