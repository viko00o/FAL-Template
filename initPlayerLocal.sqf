["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;

{
	missionNamespace setVariable [_x, true];
} forEach ["BIS_respSpecAllow3PPCamera", "BIS_respSpecLists"];

0 enableChannel [false, false];
1 enableChannel [true,  true];
2 enableChannel [false, false];
3 enableChannel [true,  true];
4 enableChannel [false, false];
5 enableChannel [false, false];
