var key_up = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
var key_up_hold = keyboard_check(ord("W")) || keyboard_check(vk_up);
var key_down = keyboard_check(ord("S")) || keyboard_check(vk_down);
var key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
var key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
var key_shift = keyboard_check(vk_shift);

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

if (test) && (!wallock) walksp = 14;

hsp = moveX * walksp;
vsp += grav + 2 * key_down;

if (canmove)
{
	#region Jump
	
	if (key_up) && (holdjump)
	{
		if (canjump > 0) 
		{
			vsp = -24;
			canjump = false;
			audio_play_sound(snJump, 10, 0);
		}
		else if (place_meeting(x, y + jumpbufferdis, oSolid))
		{
			jumpbuffer = 24;
			alarm[1] = 10;
		}
		holdjump = false;
	}

	if (!key_up) holdjump = true;

	#endregion

#region Climb

onwall = place_meeting(x + 3, y, oWall) - place_meeting(x - 3, y, oWall);

if (onwall != 0) 
{
	if (key_shift) && (wallock) && (!key_up_hold)
	{
		vsp = 0;
		hsp = 0;
		if (stamina > 0) stamina --;
		else wallock = false;
	}
	else vsplock = true;
}

if (!place_meeting(x, y + 1, oSolid)) && (onwall != 0) && (onwall == (key_right - key_left)) && (vsp >= 0)
{
	if (vsplock)
	{
		vsp = 3;
		vsplock = false;
		grav = 0;
	}															  	
}
else grav = 2;

if (key_up) && (onwall != 0) && (stamina > 0)
{
	if (key_shift)
	{
		vsp = -12
		wallock = false;
		alarm[0] = 60;
	}
	else
	{
		vsp = -24;
	}
	stamina -= 50;
	audio_play_sound(snJump, 10, 0);
}

#endregion

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
	
	if (place_meeting(x, y, oWall)) y++;
	else if (place_meeting(x, y, oSolid)) x -= (2 * image_xscale);

	#endregion
}

#region Animation
if (!place_meeting(x, y + 1, oSolid))
{
	canjump --;
	sprite_index = sPlayerJump;
	image_speed = 1;
	animlock = false;
}
else
{
	image_speed = 1;
	stamina = maxstamina;
	wallock = true;
	walkspmax = 8;
	vsplock = true;
	canjump = 7;
	if ((!key_up) && (animlock)) || sprite_index = sPlayerClimb
	{
		if (hsp == 0) || (!canmove) sprite_index = sPlayerIdle;
		else 
		{
			sprite_index = sPlayerWalk;
			image_speed = max((1 / walkspmax) * walksp, .7);
		}
	}

	if (jumpbuffer != 0)
	{
		vsp = -24;
		canjump = false;
		jumpbuffer = false;
		audio_play_sound(snJump, 10, 0);
	}
}

if ((onwall != 0) && ((onwall == (key_right - key_left)) || (key_shift)))
{
	sprite_index = sPlayerClimb;
	image_xscale = onwall;
	if (onwall == (key_left - key_right)) 
	{
		image_index = 1; 
		if (!test) walkspmax = 15;
	}
	else 
	{
		image_index = 0;
		walkspmax = 8;
	}
}



#endregion

//Direction
if(hsp != 0) && (canmove) image_xscale = sign(hsp);

#region Collision With Light

var light_id = (instance_place(x, y, oLight))
if (light_id != noone)
{
	if (light_id.image_index == 0)
	{
		if (last_light != light_id) && (place_meeting(x, y + 1, oSolid)) with(light_id)
		{
			other.last_light = light_id;
			if (file_exists("save.sav")) file_delete("save.sav");
			ini_open("save.sav");
			ini_write_real("don't cheat please. -just joking do if you want :D", "room", room);
			ini_write_real("don't cheat please. -just joking do if you want :D", "x", x + (sprite_width / 2));
			ini_write_real("don't cheat please. -just joking do if you want :D", "y", other.y);
			ini_close();
		
			if (instance_exists(oText)) instance_destroy(oText);
			global.spawn_checkpoint = x + (sprite_width / 2);
		}
		alarmlock = true;
	}
	else scrFade(rOutro);
	if (flower_hp < 10) flower_hp += .5;
}
else if (alarmlock)
{
	alarm[2] = 60;
	alarmlock = false;
}

#endregion

// oPlayer.x = clamp(oPlayer.x, camera_get_view_x(view_camera[0]), camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]));