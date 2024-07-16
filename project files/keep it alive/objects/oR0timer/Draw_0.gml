draw_set_alpha(1);
draw_set_color(c_white)
draw_set_font(f0);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

if (i) 
{
	draw_text_transformed(room_width / 2, room_height * (17 / 20), "press e / x", .7, .7, 0); 
	j = true;
}

if (j) && (keyboard_check_pressed(ord("E")) || keyboard_check_pressed(ord("X")))
{
	scrFade(room_next(room));
	global.spawn_x = 256;
	global.spawn_y = 848;
}