/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_aqua);
draw_rectangle(x + x_offset, y + y_offset, x + x_offset + total_length, y + y_offset + 50, true);

x1 = abs(obj_player.x - room_width)

min1 = 0;
min2 = 0;
max1 = 600;
max2 = 50;

u1 = (x1 - min1)/ (max1 - min1);

if (halfway) {
	draw_rectangle(x + x_offset, y + y_offset, x + x_offset + (total_length/2 + u1), y + y_offset + 50, true);;
}
else {
	draw_rectangle(x + x_offset, y + y_offset, x + x_offset + u1 , y + y_offset + 50, true);;
}

