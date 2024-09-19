// Ejecucion - Como debe actuar el jugador
private _execution = "";
// Situacion - Lore de la mision.
private _situation = "";
// Mision ---- Objetivos para cumplir la mision
private _mision    = "";

["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;
0 enableChannel [false, false];
2 enableChannel [false, false];
4 enableChannel [false, false];
5 enableChannel [false, false];
player enableFatigue false;
player setUnitTrait ["loadCoef", 0.0 , true];

[_execution, _situation, _mision, false] execVM "scripts\setupPlayerBriefing.sqf";
[] execVM "scripts\setupPlayerDragBody.sqf";
[] execVM "scripts\setupPlayerEH.sqf";
[] execVM "scripts\setupPlayerMarker.sqf";
[] execVM "scripts\setupPlayerSpectator.sqf";
[] execVM "scripts\setupVehicleRepair.sqf";