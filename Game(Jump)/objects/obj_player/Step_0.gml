/// @description Insert description here
// You can write your code in this editor

///// MOVEMENT /////
jumping = mouse_check_button_pressed(mb_left);
hsp = prev_h
vsp = prev_v;

//Jumping
if (jumping && place_meeting(x, y+1, obj_solid_object)) {
	dir = point_direction(x, y, mouse_x, mouse_y);
	if (dir >= 0 && dir <= 180) {
		speed = jump_speed;
		direction = dir;
		vsp = vspeed;
		hsp = hspeed;
		speed = 0;
		direction = 0;
		obj_mouse_cursor.visible = true;
	}
	obj_mouse_cursor.visible = false;
}
else {
	if (place_meeting(x, y + 1, obj_solid_object)) {
		vsp = 0;
		hsp = hsp*0.65 //friction
		obj_mouse_cursor.visible = true;
	}
	else {
		vsp += grav; //gravity if not jumping and not on ground
		obj_mouse_cursor.visible = false;
	}
	
}

//Vertical Collision
if (place_meeting(x,y + vsp, obj_solid_object)) {
		while (!place_meeting(x, y+sign(vsp), obj_solid_object)) {
			y+= sign(vsp);
		}
		vsp = 0;
}

//Horizontal Collision
if (place_meeting(x + hsp, y, obj_solid_object)) {
	while (!place_meeting(x+sign(hsp), y, obj_solid_object)) {
		x += sign(hsp);
	}
	hsp = -hsp;
}

//Diagonal Collision
if (place_meeting(x + hsp, y + vsp, obj_solid_object)) {
	while (!place_meeting(x + sign(hsp), y + sign(vsp), obj_solid_object)) {
		if (!place_meeting(x + sign(hsp), y, obj_solid_object)) {
			x += sign(hsp);
		}
		if (!place_meeting( x, y + sign(vsp), obj_solid_object)) {
			y += sign(vsp);
		}
	}
	hsp = 0;
	vsp = 0;
}

x += hsp;
y += vsp;
prev_v = vsp;
prev_h = hsp;


