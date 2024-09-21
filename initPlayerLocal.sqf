["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;
player setVariable ["TAG_DeathLoadout", getUnitLoadout player];

0 enableChannel [false, false];
2 enableChannel [false, false];
4 enableChannel [false, false];
5 enableChannel [false, false];

// Ejecucion - Como debe actuar el jugador
private _execution = "";
// Situacion - Lore de la mision.
private _situation = "";
// Mision ---- Objetivos para cumplir la mision
private _mision    = "";
[_execution, _situation, _mision, false] execVM "scripts\setupPlayerBriefing.sqf";

[] execVM "scripts\setupVehicleRepair.sqf";
[] execVM "scripts\setupPlayerDragBody.sqf";
[] execVM "scripts\setupPlayerMarker.sqf";

{
	missionNamespace setVariable [_x, true];
} forEach ["BIS_respSpecAllow3PPCamera", "BIS_respSpecLists"];