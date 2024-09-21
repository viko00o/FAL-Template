params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

player enableFatigue false;
player setUnitTrait ["loadCoef", 0.0, true];

player setUnitLoadout (player getVariable "TAG_DeathLoadout");
deleteVehicle _oldUnit;