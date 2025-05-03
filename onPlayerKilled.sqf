params ["_oldUnit", "_killer", "_respawn", "_respawnDelay"];

[player, [missionNamespace, "fal_loadout"]] call BIS_fnc_saveInventory;
[_killer, player] spawn fal_fnc_killMessage;