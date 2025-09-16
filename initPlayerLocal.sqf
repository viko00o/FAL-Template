["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;

call fal_fnc_setupFieldRepair;
fal_currentLoadout = getUnitLoadout player;
call fal_fnc_setupPlayer;

0 enableChannel [false, false];
1 enableChannel [true,  false];
2 enableChannel [false, false];
3 enableChannel [false, false];
4 enableChannel [false, false];
5 enableChannel [false, false];

{
	missionNamespace setVariable [_x, true];
} forEach ["BIS_respSpecAllow3PPCamera", "BIS_respSpecLists"];

player addEventHandler 
[
	"AnimChanged",
	{
		params ["_unit", "_anim"];
		if (lifeState player == "INCAPACITATED" && (_anim != "unconsciousrevivedefault" || _anim != "ainjppnemrunsnonwnondb_still" || _anim != "ainjpfalmstpsnonwrfldnon_carried_still")) exitWith 
		{
			_unit playMoveNow "unconsciousrevivedefault";
		};
	}
];

player addEventHandler 
[
	"Detached",
	{
		params ["_attachedObj", "_parentObj"];
		if (lifeState _attachedObj == "INCAPACITATED") exitWith 
		{
			_attachedObj playMoveNow "unconsciousrevivedefault";
		};
	}
];