/// @description Health, Movement

///// HEALTH AND DAMAGE /////
if (is_invincible) {
	i_count++;
	current_alpha = 0.5;
	if (i_count > i_frames) {
		is_invincible = false;
		i_count = 0;
	}
}
else {
	current_alpha = 1;
}



///// MOVEMENT /////
if (!player_dead) {
	jumping = mouse_check_button_pressed(mb_left);
	hsp = prev_h
	vsp = prev_v;

	//Jumping
	if (jumping && place_meeting(x, y+1, obj_solid_object)) {
		dir = point_direction(x, y, mouse_x, mouse_y);
		if (dir >= 0 && dir <= 180) {
			mult_for_jumping = distance_to_object(obj_mouse_cursor) / obj_mouse_cursor.MAX_DIST_FROM_PLAYER;
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
	
	x = clamp(x, 0, room_width);
	//clamp(y, 0, room_height);  //USE TO KEE PLAYER IN ROOM Instead of killing them
}


/// Sprite Animations
//jump_speed = 50;

	if (vsp < 0){
		sprite_index = sp_PlayerJump;
	} else {
		sprite_index = sp_PlayerIdle;
	}
	
	if (x < mouse_x){
		facing = 1;
	} else {
		facing = -1;
	}


/// Sound Effects
// Jump sfx
 if (jumping){
	audio_play_sound(snd_Jump, 10, false);
 }
 
 // Impact sfx
 if (collisionSoundPlaying == false && place_meeting(x + hsp, y + vsp, obj_solid_object)){
	audio_play_sound(snd_Collision, 5, false, 1, 0, random_range(2, 5));
	collisionSoundPlaying = true;
} 
else if (!place_meeting(x + hsp, y + vsp, obj_solid_object)){
	collisionSoundPlaying = false;
}