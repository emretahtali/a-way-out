switch (dir)
{
	case "left": x = camera_get_view_x(view_camera[0]) - sprite_width; break;
	case "right": x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]); break;
}