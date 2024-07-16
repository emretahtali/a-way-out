if (place_meeting(x, y + vsp, oSolid))
{
	if (!place_meeting(x, y + 1, oSolid)) && (!onwall) && (!place_meeting(x - 10, y, oSolid)) && (!place_meeting(x + 10, y, oSolid))
	{
		if ((!position_meeting(x - 8, y - 60, oSolid)) && (position_meeting(x + 20, y - 60, oSolid)))  x -= 24;
		if ((!position_meeting(x + 8, y - 60, oSolid)) && (position_meeting(x - 20, y - 60, oSolid))) x += 24;
	}
}