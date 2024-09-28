// Vars
fal_restartMarker = false;
fal_playerLastSide = side player;
fal_markersUpdatetime = 2;
fal_playerMarker = createMarker[format["fal_mkr_%1_%2", side player, getPlayerUID player], position player];
fal_playerMarker setMarkerType "mil_triangle";
switch (side player) do
{
	case west:        {fal_playerMarkerColor = "colorBLUFOR"};
	case east: 		  {fal_playerMarkerColor = "colorOPFOR"};
	case independent: {fal_playerMarkerColor = "colorGUER"};
	default 		  {fal_playerMarkerColor = "colorCIV"};
};

// eh for new markers (new player joining)
{
	if (str _x find format["fal_mkr_%1", side player] == -1) then {_x setMarkerAlphaLocal 0} else {_x setMarkerAlphaLocal 1};
} forEach (allMapMarkers select {str _x find "fal_mkr_" >= 0});
_fal_markerEH = addMissionEventHandler 
[
	"MarkerCreated",
	{
		params ["_marker", "_channelNumber", "_owner", "_local"];
		{
			if (str _x find format["fal_mkr_%1", side player] == -1) then {_x setMarkerAlphaLocal 0} else {_x setMarkerAlphaLocal 1};
		} forEach (allMapMarkers select {str _x find "fal_mkr_" >= 0});
	}
];

while {!fal_restartMarker} do
{
	waitUntil {sleep fal_markersUpdatetime; true};
	if (fal_playerLastSide != side player) then {fal_restartMarker = true};
	fal_playerMarker setMarkerPos [getPos player select 0, getPos player select 1, 0];
	fal_playerMarker setMarkerDir (getDir player);
	if (lifeState player == "HEALTHY" || lifeState player == "INJURED") then {fal_playerMarker setMarkerColor fal_playerMarkerColor};
	if (lifeState player == "INCAPACITATED") then {fal_playerMarker setMarkerColor "ColorRed"};
	if (!alive player) then {fal_playerMarker setMarkerColor "colorBlack"};
	if (leader group player == player) then {fal_playerMarker setMarkerText format["%1 | %2 | Lr: %3 | Sr: %4", name player, groupId group player, (call TFAR_fnc_ActiveLrRadio) call TFAR_fnc_getLrFrequency, (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwFrequency]} else {fal_playerMarker setMarkerText name player};
};

deleteMarker fal_playerMarker;
removeMissionEventHandler ["MarkerCreated", _fal_markerEH];
[] execVM "scripts\setupPlayerMarker.sqf";

/**
{
	_fal_playerMarker1 = createMarker[format["fal_mkr_%1_%2", side _x, random 10000000], position _x];
	_fal_playerMarker1 setMarkerText name _x;
	_fal_playerMarker1 setMarkerType "mil_triangle";
	_fal_playerMarker1 setMarkerColor "colorOPFOR";
} forEach (allUnits - allPlayers);
*/