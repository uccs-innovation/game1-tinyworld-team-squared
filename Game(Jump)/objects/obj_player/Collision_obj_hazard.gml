if (is_invincible == false) {
	is_invincible = true;
	current_HP += damage_taken;
	
	// Sfx
	audio_play_sound(snd_playerHit, 5, false, 1, 0, 10);
	audio_play_sound(snd_PlayerSqueak, 5, false, 1, 0, 2);
	
	if (current_HP <= 0) {
		player_dead = true;
		obj_game_controller.player_dead = true;
		instance_destroy(obj_mouse_cursor); //dependent object destruction DO NOT REMOVE
		obj_game_controller.player_score = 0;
		instance_destroy();
	}
}

