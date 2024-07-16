///desc scrLoadPos(0 = use  /  1 = room   /  2 = x   /   3 = y)
///arg 0,1,2,3
function scrLoadPos() {

	var room_ = 0;
	var x_ = 0;
	var y_ = 0;

	if (file_exists("save.sav"))
	{
		ini_open("save.sav");
		
		room_ = ini_read_real("don't cheat please. -just joking do if you want :D", "room", rMenu);
		x_ = ini_read_real("don't cheat please. -just joking do if you want :D", "x", 0);
		y_ = ini_read_real("don't cheat please. -just joking do if you want :D", "y", 0);
		ini_close();
	
		switch (argument[0])
		{
			case 0: default:
			{
				scrFade(room_);
				global.spawn_x = x_;
				global.spawn_y = y_;
				break;
			}
	
			case 1: return room_; break;
			case 2: return x_; break;
			case 3: return y_; break;
		}
	}
	else room = rMenu;


}
