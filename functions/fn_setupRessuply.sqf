private _fal_playerLoadout = getUnitLoadout player;
_fal_RessuplyBox addAction
[
	"Rearmarse",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		player setUnitLoadout FAL_playerLoadout;
	},
	nil,
	1.5,
	true,
	true,
	"",
	"true",
	5,
	false,
	"",	
	""
];

true