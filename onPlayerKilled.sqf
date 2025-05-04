params ["_oldUnit", "_killer"];

fal_currentLoadout = getUnitLoadout _oldUnit;
[_killer, player] spawn fal_fnc_killMessage;