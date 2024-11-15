if (!hasInterface) exitWith {};

fal_zeusModule setPos [0,0,0];

player setUnitFreefallHeight 20000;
player allowDamage false;
player hideObjectGlobal true;

while {alive player} do 
{
	player attachTo[curatorCamera,[0,0,0]];
	sleep 0.1;	
};

waitUntil {sleep 1; alive player};

[] call fal_fnc_setupPlayerZeus;

true