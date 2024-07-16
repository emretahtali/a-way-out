draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(f0);
draw_set_alpha(1);

if (credits)
{
	draw_text_transformed(display_get_gui_width() / 2, display_get_gui_height() / 16 * 3, "a game by EMRE TAHTALI", 2, 2, 5);
	draw_text_transformed(display_get_gui_width() / 2, display_get_gui_height() / 16 * 4, "emretahtali on itch.io", 1, 1, 5);

	draw_text_transformed(display_get_gui_width() / 2, display_get_gui_height() / 16 * 8, "thank you for playing!", 1.2, 1.2, 5);
	draw_text_transformed(display_get_gui_width() / 2, display_get_gui_height() / 16 * 9, "follow me if you liked my game!", 1.2,1.2, 5);

	if (i) draw_text_transformed(display_get_gui_width() / 2, display_get_gui_height() / 16 * 13, "press any key", 1, 1, 5);
	if (keyboard_check_pressed(vk_anykey)) scrFade(rMenu);
}