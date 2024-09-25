// Vars
fal_markersUpdatetime = 1;

_playerMarker = createMarker[format["fal_mkr_%1", getPlayerUID player], position player];
_playerMarker setMarkerText name player;
_playerMarker setMarkerType "mil_triangle";
switch (side player) do
{
	case west:        {_playerMarker setMarkerColor "colorBLUFOR"; playerMarkerColor = "colorBLUFOR";};
	case east: 		  {_playerMarker setMarkerColor "colorOPFOR"; playerMarkerColor = "colorOPFOR";};
	case independent: {_playerMarker setMarkerColor "colorGUER"; playerMarkerColor = "colorGUER";};
	default 		  {_playerMarker setMarkerColor "colorCIV"; playerMarkerColor = "colorCIV";};
};

while {true} do
{
	waitUntil {sleep fal_markersUpdatetime; true};

	_playerMarker setMarkerPos [getPos player select 0, getPos player select 1, 0];
	_playerMarker setMarkerDir (getDir player);
	
	if (lifeState player == "HEALTHY" || lifeState player == "INJURED") then {_playerMarker setMarkerColor playerMarkerColor};
	if (lifeState player == "INCAPACITATED") then {_playerMarker setMarkerColor "ColorRed"};
	if (!alive player) then {_playerMarker setMarkerColor "ColorBlack"};
};