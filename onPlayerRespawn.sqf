params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

// TODO - Test this
_newUnit setUnitLoadout (getUnitLoadout _oldUnit);
player enableFatigue false;
player setUnitTrait ["loadCoef", 0.8, true];

deleteVehicle _oldUnit;