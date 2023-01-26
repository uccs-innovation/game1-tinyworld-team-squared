/// @description Insert description here
// You can write your code in this editor
x = obj_camera.x - 800;
y = obj_camera.y + 100;

if (instance_exists(obj_checkpoint)) {
	if (obj_checkpoint.triggered) {
		halfway = true;
	}
	else {
		halfway = false;
	}
}
