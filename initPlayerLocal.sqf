["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;

{
	missionNamespace setVariable [_x, true];
} forEach ["BIS_respSpecAllow3PPCamera", "BIS_respSpecLists"];

player enableFatigue false;
player setUnitTrait ["loadCoef", 0.8, true];

player addEventHandler 
[
	"Respawn",
	{
		params ["_unit", "_corpse"];
		_unit enableFatigue false;
		_unit setUnitTrait ["loadCoef", 0.8, true];
		_unit setUnitLoadout (_unit getVariable "fal_playerLoadout");
		deleteVehicle _corpse;
	}
];

player addEventHandler 
[
	"Killed", 
	{
		params ["_unit", "_killer", "_instigator", "_useEffects"];
		_unit setVariable ["fal_playerLoadout", getUnitLoadout _unit];
	}
];
