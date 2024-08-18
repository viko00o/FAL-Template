if (isServer) then
{
	["Initialize"] call BIS_fnc_dynamicGroups;
	
	call fal_fnc_createAdminZeus;
	call fal_fnc_setupRessuply;
	[false] call fal_fnc_setupTasks;
};

if (hasInterface) then
{
	// TODO - Find a better place for briefing variables
	// Ejecucion - 
	private _fal_execution = parseText "";
	// Situacion - 
	private _fal_situation = parseText "";
	// Mision    - 
	private _fal_mision    = parseText "";

	["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;

	[_fal_execution, _fal_situation, _fal_mision] call fal_fnc_setupPlayerBriefing;
	call fal_fnc_setupPlayerDragBody;
	call fal_fnc_setupPlayerEH;
	call fal_fnc_setupPlayerMarker;
	call fal_fnc_setupPlayerSpectator;

	player enableFatigue false;
	player setUnitTrait ["loadCoef", 0.0 , true];
};

call fal_fnc_setupVehicleRepair;