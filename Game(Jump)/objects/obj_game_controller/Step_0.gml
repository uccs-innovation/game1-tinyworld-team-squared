/// @description Insert description here
// You can write your code in this editor
if (player_dead) {
	death_countdown++
	if (death_countdown >= death_countdown_MAX) {
		obj_score_controller.player_score = 0;
		room_restart();
	}
}

