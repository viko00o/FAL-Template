["Initialize"] call BIS_fnc_dynamicGroups;

[false] execVM "scripts\setupTasks.sqf";
[] execVM "scripts\setupVehicleRepair.sqf";

/*
FAL_unitsLastPos = [];
addMissionEventHandler 
[
	"PlayerConnected",
	{
		params ["_id", "_uid", "_name", "_jip", "_owner", "_idstr"];
		if (FAL_unitsLastPos find _uid != -1) then {};
	}
];
*/
addMissionEventHandler
[
	"HandleDisconnect", 
	{
		params ["_unit", "_id", "_uid", "_name"];
		deleteMarker format["fal_mkr_%1", _uid];
		//FAL_unitsLastPos pushBack [_uid, damage _unit, getUnitLoadout _unit, getPos _unit, vehicle _unit];
		true;
	}
];

//[[_uid, _damage, _loadout, _pos]]

// Test para ver si el webhook funciona