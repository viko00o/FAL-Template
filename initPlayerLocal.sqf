// NO TOCAR
0 enableChannel [false, false];
2 enableChannel [false, false];
4 enableChannel [false, false];
5 enableChannel [false, false];
["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;
{
	missionNamespace setVariable [_x, true];
} forEach ["BIS_respSpecAllow3PPCamera", "BIS_respSpecLists"];
player enableFatigue false;
player setUnitTrait ["loadCoef", 0.7, true];
[] execVM "scripts\setupPlayerBriefing.sqf";
[] execVM "scripts\setupVehicleRepair.sqf";
onPreloadFinished {call fal_fnc_modBlacklist};