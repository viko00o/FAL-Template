[
	"",
	"",
	"",
	(side player)
] call fal_fnc_setupBriefing

// TODO - Test this
showHUD 
[
	true, // scriptedHUD
	true, // info
	true, // radar
	true, // compass
	true, // direction
	true, // menu
	false, // group
	true, // cursors
	true, // panels
	true, // kills
	true  // showIcon3D
];

0 enableChannel [true, false];
1 enableChannel [false, false];
2 enableChannel [false, false];
3 enableChannel [false, false];
4 enableChannel [false, false];
5 enableChannel [false, false];

["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;

{
	missionNamespace setVariable [_x, true];
} forEach ["BIS_respSpecAllow3PPCamera", "BIS_respSpecLists"];

player enableFatigue false;
player setUnitTrait ["loadCoef", 0.8, true];

[] call fal_fnc_setupFieldRepair;

onPreloadFinished {call fal_fnc_modBlacklist};