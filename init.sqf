if (isServer) then
{
	["Initialize"] call BIS_fnc_dynamicGroups;
	
	// TODO - Finish fal_fnc_createAdminZeus
	//call fal_fnc_createAdminZeus;
	call fal_fnc_setupRessuply;
	[false] call fal_fnc_setupTasks;
	[] spawn fal_fnc_setupVehicleRepair;
};