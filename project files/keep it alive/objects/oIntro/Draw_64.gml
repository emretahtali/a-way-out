draw_set_alpha(1);
draw_set_color(c_white)
draw_set_font(f0);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (title) 
{
	draw_text_transformed(display_get_gui_width() / 2, display_get_gui_height() / 16 * 5, "A WAY OUT", 6, 6, 5);

	if (j)
	{
		if (i) draw_text_transformed(display_get_gui_width() / 2, display_get_gui_height() / 16 * 9, "press any key", 1, 1, 5);
		if (keyboard_check_pressed(vk_anykey)) scrFade(room_next(room));
	}
}
else 
{
	if (floor(image_index) == 32) audio_play_sound(snExplosion, 11, 0);
}