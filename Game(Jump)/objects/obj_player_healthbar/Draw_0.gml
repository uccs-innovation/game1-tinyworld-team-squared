/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_gray);
draw_rectangle(x + x_offset,y + y_offset, x + x_offset + (obj_player.MAX_HP * pixel_dist_multiplyer), y + y_offset + 50, true);
draw_set_color(c_red);
draw_rectangle(x + x_offset,y + y_offset, x + x_offset + (obj_player.current_HP * pixel_dist_multiplyer), y + y_offset + 50, false);


