draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(f0);

maxispd = maxi* spd;
i = clamp(i, 0, maxi);

draw_set_alpha((i * spd) / maxispd);

if (i == 0)
{
	dir = 1;
	if (lap > 0) lock = true;
	if (!lock) lap ++;
}
else if (i == maxi)
{
	audio_play_sound(snFade, 9, 0);
	dir = -1;
	if (room == rIntro2)
	{
		global.spawn_x = 256;
		global.spawn_y = 848;
	}
	room = target;
}

if (lock) 
{
	draw_set_alpha(0);
	target = 0;
	spd = 1;
	i = 0;
	dir = 1
	lap = 0;
}
else
{
	i += dir;
}

draw_rectangle(0, 0, camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]), 0);

draw_set_alpha(1);
/*
draw_set_color(c_red);
draw_text(60, 60, global.spawn_x);
draw_text(60, 120, global.spawn_y);
if (instance_exists(oPlayer)) draw_text(60, 180, oPlayer.x);
if (instance_exists(oPlayer)) draw_text(60, 240, oPlayer.y);
draw_text(60, 240, target);