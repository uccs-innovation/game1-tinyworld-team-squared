/// @description Insert description here
// You can write your code in this editor
obj_player.current_HP += 25;
if (obj_player.current_HP > obj_player.MAX_HP) {
	obj_player.current_HP = obj_player.MAX_HP
}
instance_destroy();
