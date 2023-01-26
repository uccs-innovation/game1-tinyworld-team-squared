/// @description Insert description here
// You can write your code in this editor
obj_score_controller.player_score++;

//sfx
audio_play_sound(snd_CarrotPickup, 5, false, 1, 0, random_range(1,3));

instance_destroy();
