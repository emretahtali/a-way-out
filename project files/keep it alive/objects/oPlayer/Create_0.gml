vsp = 0;
hsp = 0;

walksp_debug = false;
walkstartsp = 3;
walksp_t = 0;
walksp = 0;
walkspmax = 8;
test = true;

grav = 2;
canjump = false;
canmove = true;
holdjump = true;
jumpbuffer = false;
jumpbufferdis = 100;
onwall = false;
vsplock = false;
wallock = true;
maxstamina = 150;
stamina = maxstamina;
animlock = false;
debug = false;
last_light = false;
flower_hp = 10;
alarmlock = true;

if (global.spawn_x != 0)
{
	x = global.spawn_x;
	y = global.spawn_y - 1;
}