draw_set_color(c_red);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(f0);
draw_set_alpha(1);

if (debug)
{
	draw_text(30, 30, "t1: " + string(t1));
	draw_text(30, 60, "t2: " + string(t2));
	draw_text(30, 90, "(global.spawn_checkpoint < lightdis / 2): " + string(global.spawn_checkpoint < lightdis / 2));
	draw_text(30, 120, "(global.spawn_checkpoint < lightdis * (3 / 2)): " + string(global.spawn_checkpoint < lightdis * (3 / 2)));
	draw_text(30, 150, "global.spawn_x: " + string(global.spawn_x));
	draw_text(30, 180, "global.spawn_checkpoint: " + string(global.spawn_checkpoint));
	draw_text(30, 210, "oPlayer.x: " + string(oPlayer.x));
	draw_text(30, 240, "i: " + string(i));
}