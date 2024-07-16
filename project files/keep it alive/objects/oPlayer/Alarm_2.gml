if (!place_meeting(x, y, oLight))
{
	if (flower_hp > 1)
	{
		flower_hp --; 
		alarm[2] = 60;
	}
	else scrLoadPos(0);
}

