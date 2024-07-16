var key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
var key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
var key_interact = keyboard_check(ord("E")) || keyboard_check(ord("X"));

var moveX = key_right - key_left;

if (moveX != 0)
{
	if ((walksp_t != walkspmax * walkstartsp) && (walksp_t != walkspmax * -walkstartsp)) walksp_t += moveX;
}
else
{
	walksp = 0;
	walksp_t = 0;
}

if (sign(walksp_t) == 1) walksp = ceil(walksp_t / walkstartsp) * moveX;
else walksp = floor(walksp_t / walkstartsp) * moveX;

walksp = min(abs(walksp), walkspmax);

hsp = moveX * walksp;
vsp += grav;

if (canmove)
{
	#region Walls
	if (place_meeting(x + hsp, y, oSolid))
	{
		while (!place_meeting(x + sign(hsp), y, oSolid)) x += sign(hsp);
		hsp = 0;
	}
	x += hsp;

	if (place_meeting(x, y + vsp, oSolid))
	{
	while (!place_meeting(x, y + sign(vsp), oSolid)) y += sign(vsp);
	vsp = 0;
	}
	y += vsp;

	#endregion
}

#region Animation

if (hsp == 0) || (!canmove) sprite_index = sPlayerIdleIntro;
else 
{
	sprite_index = sPlayerWalkIntro;
	image_speed = max((1 / walkspmax) * walksp, .7);
}

#endregion

//Direction
if(hsp != 0) && (canmove) image_xscale = sign(hsp);

//Collision With Light
if (place_meeting(x, y, oLight))
{
	if (!instance_exists(oText))
	{
		var textbox = instance_create_layer(0, 0, "Gui", oText);
		with (textbox) text = "press e / x to interact";
	}
	
	if (key_interact)scrFade(room_next(room));
}
else if (instance_exists(oText)) instance_destroy(oText);