if (text != text_current)
{
	alarm[0] = text_speed;
	letters ++;
	a ++;
	if (p)
	{
		audio_sound_pitch(snText, random_range(1.5, 1.6));
		audio_play_sound(snText, 10, 0);
	}
	p = !p;
}