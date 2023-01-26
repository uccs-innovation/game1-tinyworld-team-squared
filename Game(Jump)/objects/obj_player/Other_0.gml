/// @description Insert description here
// You can write your code in this editor
obj_game_controller.player_dead = true;
		//sfx
		audio_play_sound(snd_PlayerDeath, 5, false);
instance_destroy(obj_mouse_cursor);
instance_destroy(obj_player_healthbar);
instance_destroy(obj_progress_bar);
instance_destroy(obj_checkpoint);
instance_destroy();












