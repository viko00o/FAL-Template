_mkr = createMarker[format["fal_mkr_%1", getPlayerUID player], position player];
_mkr setMarkerText name player;
_mkr setMarkerType "mil_triangle";
_mkr setMarkerColor "colorBLUFOR";

while {true} do 
{
	waitUntil { sleep 0.5; true };

	_mkr setMarkerPos [getPos player select 0, getPos player select 1, 0];
	_mkr setMarkerDir (getDir player);
	
	if (lifeState player == "HEALTHY" || lifeState player == "INJURED") then {_mkr setMarkerColor "colorBLUFOR"};
	if (lifeState player == "INCAPACITATED") then {_mkr setMarkerColor "ColorRed"};
	if (!alive player) then {_mkr setMarkerColor "ColorBlack"};
};