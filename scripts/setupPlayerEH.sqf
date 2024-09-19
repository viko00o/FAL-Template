player addEventHandler 
[
	"Killed", 
	{
		player setVariable ["TAG_DeathLoadout", getUnitLoadout player];
	}
];
player addEventHandler 
[
	"Respawn", 
	{
		params ["_unit", "_corpse"];
		
		player enableFatigue false;
		player setUnitTrait ["loadCoef", 0.0, true];

		private _loadout = player getVariable "TAG_DeathLoadout"; if (!isNil "_loadout") then 
		{
			player setUnitLoadout _loadout;
			deleteVehicle _corpse;
		};
	}
];

true