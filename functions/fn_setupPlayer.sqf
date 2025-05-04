if (!hasInterface) exitWith {};

player setUnitLoadout fal_currentLoadout;
player enableFatigue false;
player setUnitTrait ["loadCoef", 0.8, true];

true