draw_set_color(make_color_rgb(34, 32, 52));
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

i = clamp(i, ii, 3);

if (!menulock)
{
	if (j < max_j) j+= 20;
	j = min(max_j, j);
	
	draw_rectangle((room_width / 2) - j, 207 + (i * 75) - (ii * 32), (room_width / 2) + j,  287 + (i * 75) - (ii * 32), 0);
	
	i += ((keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down)) - (keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up)));
	if (i == 3) i = ii;
	else if (i == ii - 1) i = 2;
	
	if  (((keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down)) - (keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up))) != 0)
	{
		audio_play_sound(snMenu, 10, 0);
	}
	
	if (keyboard_check_pressed(ord("E"))) || (keyboard_check_pressed(ord("X"))) || (keyboard_check_pressed(vk_space)) || (keyboard_check_pressed(vk_enter))
	{
		switch (i)
		{
			case 0: scrFade(scrLoadPos(0)); break;
			case 1: scrFade(room_next(room)); break;
			//case 1: scrFade(r1); break;
			case 2: game_end(); break;
		}
	}
}