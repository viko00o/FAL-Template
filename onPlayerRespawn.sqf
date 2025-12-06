params ["_newUnit", "_oldUnit"];

player enableFatigue false;
player setUnitTrait ["loadCoef", 0.8, true];

fal_currentLoadout = getUnitLoadout _oldUnit;
deleteVehicle _oldUnit;
player setUnitLoadout fal_currentLoadout;