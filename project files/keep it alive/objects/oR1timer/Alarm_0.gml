switch (i)
{
	case 0: 
	{
		with (instance_create_layer(camera_get_view_width(view_camera[0]) / 2, room_height * (7 / 10), "Gui", oText))
		{
			text = "the flower slowly dies if there is no light.";
			text_scale = 2;
		}
		alarm[0] = 100;
		i ++;
		break;
	}
	
	case 1:
	{
		with (instance_create_layer(camera_get_view_width(view_camera[0]) / 2, room_height * (8 / 10), "Gui", oText))
		{
			text = "KEEP IT ALIVE.";
			text_speed = 10;
			text_scale = 2;
		}
		break;
	}

	case 2: 
	{
		with (instance_create_layer((camera_get_view_width(view_camera[0]) / 2) + a, room_height * (7 / 10), "Gui", oText))
		{
			text = "hold shift to stick to walls";
			text_scale = 2;
		}
		alarm[0] = 90;
		i ++;
		break;
	}

	case 3: 
	{
		with (instance_create_layer((camera_get_view_width(view_camera[0]) / 2) + a, room_height * (8 / 10), "Gui", oText))
		{
			text = "climbing or sticking to walls takes your stamina";
			text_scale = 2;
		}
		break;
	}

/*	case 4: 
	{
		with (instance_create_layer((camera_get_view_width(view_camera[0]) / 2) + a, room_height * (9 / 10), "Gui", oText))
		{
			text = "if you wait a second after sticking the wall, you'll gain more speed";
			text_scale = 2;
		}
		break;
	}*/
	
	case 4: 
	{
		with (instance_create_layer((camera_get_view_width(view_camera[0]) / 2) + (2 * a), room_height * (7 / 10), "Gui", oText))
		{
			text = "press r to restart";
			text_scale = 2;
		}
		alarm[0] = 90;
		i ++;
		break;
	}
	
	case 5: 
	{
		with (instance_create_layer((camera_get_view_width(view_camera[0]) / 2) + (2 * a), room_height * (8 / 10), "Gui", oText))
		{
			text = "press esc to quit";
			text_scale = 2;
		}
		break;
	}
	
	case 6: 
	{
		with (instance_create_layer((camera_get_view_width(view_camera[0]) / 2) + (3* a), room_height * (7 / 10), "Gui", oText))
		{
			text = "your game data is being saved automatically";
			text_scale = 2;
		}
		alarm[0] = 90;
		i ++;
		break;
	}
		
	case 7: 
	{
		with (instance_create_layer((camera_get_view_width(view_camera[0]) / 2) + (3 * a), room_height * (8 / 10), "Gui", oText))
		{
			text = "so you won't have to start over if you come back";
			text_scale = 2;
		}
		break;
	}
	
}

