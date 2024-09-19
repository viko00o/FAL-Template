["Initialize"] call BIS_fnc_dynamicGroups;

[false] execVM "scripts\setupTasks.sqf";
[] execVM "scripts\setupVehicleRepair.sqf";

addMissionEventHandler 
[
	"HandleDisconnect", 
	{
		params ["_unit", "_id", "_uid", "_name"];
		deleteMarker format["fal_mkr_%1", _uid];
		true;
	}
];