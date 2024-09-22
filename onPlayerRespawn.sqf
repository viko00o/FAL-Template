params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

player setUnitLoadout (player getVariable "TAG_DeathLoadout");
player enableFatigue false;
player setUnitTrait ["loadCoef", 0.0, true];

deleteVehicle _oldUnit;