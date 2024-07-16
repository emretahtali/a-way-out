if ((global.spawn_checkpoint < lightdis / 2))
{
	if (t1)
	{
		i = 0;
		alarm[0] = 50;
		t1 = false;
	}
}
else if (global.spawn_checkpoint < lightdis * (3 / 2))
{
	if (t2)
	{
		i = 2;
		alarm[0] = 60; 
		t2 = false;
	}
}
else if (global.spawn_checkpoint < lightdis * (5 / 2))
{
	if (t3)
	{
		i = 4;
		alarm[0] = 60; 
		t3 = false;
	}
}
else if (global.spawn_checkpoint < lightdis * (7 / 2))
{
	if (t4)
	{
		i = 6;
		alarm[0] = 60; 
		t4 = false;
	}
}
