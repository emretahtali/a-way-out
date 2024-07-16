if (debug)
{
	draw_set_color(c_red);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(30, 30, "letters: " + string(letters));
	draw_text(30, 60, "text: " + text);
	draw_text(30, 90, "text_current: " + text_current);
	draw_text(30, 120, "a: " + string(a));
}