hdir = ((keyboard_check(ord("A")) * -1) + (keyboard_check(ord("D")) * 1));
jumping = keyboard_check_pressed(vk_space);


//Horizontal Acceleration and Momentum Preservation
if (hdir != 0) {
	hsp += horizontal_accel * (hdir);
	if (abs(hsp) > horizontal_speed) {
		 hsp = horizontal_speed * sign(hsp)
	}
}
//Vertical Momentum preservation
vsp = prev_v;

//Jumping
if (jumping && place_meeting(x, y + 1, Solid_Object_obj)) {
	vsp += jump_speed;
}
//Wall jumping
else if (jumping && OnWall){
	vsp = jump_speed;
	if (place_meeting(x + 1, y, Solid_Object_obj)) {
		hsp = -h_walljump;
	}
	else if (place_meeting(x - 1, y, Solid_Object_obj)) {
		hsp = h_walljump;
	}
}
//Gravity and horizontal friction
else {
	if (place_meeting(x, y + 1, Solid_Object_obj)) {
		vsp = 0;
		if (hdir == 0) {
		hsp = hsp * 0.65
		}
	}
	else {
		vsp += grav;
		if (abs(vsp) > terminal_v) vsp = terminal_v * sign(vsp);
	}
}

//Vertical Collision
if (place_meeting(x,y + vsp, Solid_Object_obj)) {
		while (!place_meeting(x, y+sign(vsp), Solid_Object_obj)) {
			y += sign(vsp);
		}
		vsp = 0;
}
//Horizontal Collision
if (place_meeting(x + hsp, y, Solid_Object_obj)) {
	while (!place_meeting(x+sign(hsp), y, Solid_Object_obj)) {
		x += sign(hsp);
	}
	hsp = 0;
	OnWall = true;
}
else {
	OnWall = false;	
}

//Diagonal Collision
if (place_meeting(x + hsp, y + vsp, Solid_Object_obj)) {
	while (!place_meeting(x + sign(hsp), y + sign(vsp), Solid_Object_obj)) {
		if (!place_meeting(x + sign(hsp), y, Solid_Object_obj)) {
			x += sign(hsp);
		}
		if (!place_meeting(x, y + sign(vsp), Solid_Object_obj)) {
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
