draw_set_alpha(1);
draw_set_color(c_white)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(f0);

if (text != "")
{
	text_current = string_copy(text, 0, letters);
	
	draw_text_transformed(textX, textY, text_current, text_scale, text_scale, 0);
	if (a) alarm[0] = text_speed; a = 0;
}