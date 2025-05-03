params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

// TODO - Test this
[player, [missionNamespace, "fal_loadout"]] call BIS_fnc_loadInventory;
player enableFatigue false;
player setUnitTrait ["loadCoef", 0.8, true];

deleteVehicle _oldUnit;