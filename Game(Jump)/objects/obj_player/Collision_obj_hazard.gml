if (is_invincible == false) {
	is_invincible = true;
	current_HP += damage_taken;
	if (current_HP <= 0) {
		player_dead = true;
		obj_game_controller.player_dead = true;
		instance_destroy(obj_mouse_cursor); //dependent object destruction DO NOT REMOVE
		instance_destroy();
	}
}

