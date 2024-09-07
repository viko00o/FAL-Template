// TODO - Find a better place for briefing variables
// Ejecucion - Como debe actuar el jugador
private _fal_execution = "";
// Situacion - Lore de la mision.
private _fal_situation = "";
// Mision ---- Objetivos para cumplir la mision
private _fal_mision    = "";

["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;
player enableFatigue false;
player setUnitTrait ["loadCoef", 0.0 , true];

[_fal_execution, _fal_situation, _fal_mision, false] call fal_fnc_setupPlayerBriefing;
call fal_fnc_setupPlayerDragBody;
call fal_fnc_setupPlayerEH;
[] spawn fal_fnc_setupPlayerMarker;
call fal_fnc_setupPlayerSpectator;