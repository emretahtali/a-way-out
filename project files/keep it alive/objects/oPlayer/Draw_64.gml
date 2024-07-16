draw_set_color(c_red);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(f0);
draw_set_alpha(1);

if (debug)
{
	draw_text(30, 30, "gravity: " + string(grav));
	draw_text(30, 60, "x: " + string(x));
	draw_text(30, 90, "y: " + string(y));
	draw_text(30, 120, "vsp: " + string(vsp));
	draw_text(30,	150, "hsp:" + string(hsp));
	draw_text(30,	180, "stamina:" + string(stamina));
	draw_text(30,	210, "frame:" + string(floor(image_index)));
	draw_text(30,	240, "jumpbuffer:" + string(jumpbuffer));
	draw_text(30,	270, "edgebuffer:" + string(canjump));
	draw_text(30,	300, "collide:" + string(animlock));
	draw_text(30,	330, "walkspeed:" + string(walksp));
}

//draw_text(60, 60, "oPlayer.last_light.x : " + string(oPlayer.last_light.x));

for (var i = 0; i < flower_hp; i++)
{
	draw_sprite(sFlowerGui, flower_hp - 1, camera_get_view_width(view_camera[0]) / 2, 90);
}

if (walksp_debug)
{
	draw_text(30,	30, "walkspeedmax:" + string(walkspmax));
	draw_text(30,	60, "walkspeed:" + string(walksp));
	draw_text(30,	90, "walksp_t:" + string(walksp_t));
	draw_text(30,	120, "walkstartsp:" + string(walkstartsp));
	draw_text(30,	150, "test:" + string(test));
}