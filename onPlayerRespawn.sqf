params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

// FIX - main weapon is getting lost in the void...
_newUnit setUnitLoadout (getUnitLoadout _oldUnit);
[] call fal_fnc_setupPlayer;

deleteVehicle _oldUnit;