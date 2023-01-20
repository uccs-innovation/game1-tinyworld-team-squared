/// @description Insert description here
// You can write your code in this editor


jumping = keyboard_check_pressed(vk_space);
hsp = prev_h
vsp = prev_v;

//jumping
if (jumping && place_meeting(x, y+1, Solid_Object)) {
	x_diff = x - mouse_x;
	y_diff = y - mouse_y;
	hsp += ((-x_diff) / 6);
	vsp += ((-y_diff) / 6);
}
else {
	if (place_meeting(x, y + 1, Solid_Object)) {
		vsp = 0;
		hsp = hsp*0.75 //friction
	}
	else {
		vsp += grav; //gravity if not jumping and not on ground
	}
}

//Vertical Collision
if (place_meeting(x,y + vsp, Solid_Object)) {
		while (!place_meeting(x, y+sign(vsp), Solid_Object)) {
			y+= sign(vsp);
		}
		vsp = 0;
}

//Horizontal Collision
if (place_meeting(x + hsp, y -1, Solid_Object)) {
	while (!place_meeting(x+sign(hsp), y, Solid_Object)) {
		x += sign(hsp);
	}
	hsp = -hsp;
}

//Diagonal Collision
/*
if (place_meeting(x + hsp, y + vsp, Solid_Object)) {
	while (!place_meeting(x + sign(hsp), y + sign(vsp), Solid_Object)) {
		if (!place_meeting(x + sign(hsp), y, Solid_Object)) {
			x += sign(hsp);
		}
		if (!place_meeting( x, y + sign(vsp), Solid_Object)) {
			y += sign(vsp);
		}
	}
}
*/
x += hsp;
y += vsp;
prev_v = vsp;
prev_h = hsp;

/*
/// @description Insert description here
// You can write your code in this editor

hdir = ((keyboard_check(ord("A")) * -1) + (keyboard_check(ord("D")) * 1));
jumping = keyboard_check_pressed(vk_space);

hsp = horizontal_speed * (hdir);
vsp = prev_v;

if (jumping && place_meeting(x, y + 1, Solid_Object)) {
	vsp += jump_speed;
}
else {
	if (place_meeting(x, y + 1, Solid_Object)) {
		vsp = 0;
	}
	else {
		vsp += grav;
	}
}

if (place_meeting(x,y + vsp, Solid_Object)) {
		while (!place_meeting(x, y+sign(vsp), Solid_Object)) {
			y+= sign(vsp);
		}
		vsp = 0;
}

if (place_meeting(x + hsp, y -1, Solid_Object)) {
	while (!place_meeting(x+sign(hsp), y, Solid_Object)) {
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp;
y += vsp;
prev_v = vsp;
*/