["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;

call fal_fnc_modBlacklist;
call fal_fnc_setupPlayer;
call fal_fnc_setupFieldRepair;

[
	"",
	"",
	""
] call fal_fnc_setupBriefing;
