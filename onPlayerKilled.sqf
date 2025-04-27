params ["_oldUnit", "_killer", "_respawn", "_respawnDelay"];

[player, [missionNamespace, "fal_loadout"]] call BIS_fnc_saveInventory;

if (isPlayer _killer && _killer != player) then 
{
	[name _killer, name player] call fal_fnc_killMessage
};