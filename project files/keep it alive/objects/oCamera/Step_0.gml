//if (global.spawn_x > 565) x = oPlayer.last_light.bbox_left - 145;
if (global.spawn_checkpoint == global.spawn_x) x = oPlayer.last_light.bbox_left - 145;


/*
if (!file_exists("a.sav")) 
{
	ini_open("a.sav");
	ini_write_real("", "", (oPlayer.last_light.bbox_left - 145) - x);
	ini_close();
}
*/
x = lerp(x, oPlayer.last_light.bbox_left - 145, .07)

x = clamp(x, 0, room_width);
y = clamp(y, height_ / 2, room_height - height_ / 2);
camera_set_view_pos(view_camera[0], x , 0);
