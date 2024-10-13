params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

[player, [missionNamespace, "fal_loadout"]] call BIS_fnc_loadInventory;

player enableFatigue false;
player setUnitTrait ["loadCoef", 0.0, true];

{_x addCuratorEditableObjects [player, true]} forEach allCurators;

deleteVehicle _oldUnit;