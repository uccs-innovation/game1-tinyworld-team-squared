/// @description Insert description here
// You can write your code in this editor
obj_player.current_HP += 25;

//sfx
audio_play_sound(snd_PlayerHeal, 5, false);

if (obj_player.current_HP > obj_player.MAX_HP) {
	obj_player.current_HP = obj_player.MAX_HP
}
instance_destroy();
