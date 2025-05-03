/*
	Author: Viko

	Description:
		briefings con mision situacion ejecucion y distincion de bando para que nunca lo usen en su puta vida 

	Parameter(s):
		_mision: STRING - (Opcional, default "" significa sin entrada de mision)

		_situation: STRING - (Opcional, default "" significa sin entrada de situacion)

		_execution: STRING - (Opcional, default "" significa sin entrada de ejecucion)

		_side: puede ser: (Opcional, default side player significa que no hay filtro de bando)
			west - este briefing solo esta disponible para todo el bando bluefor
			east - este briefing solo esta disponible para todo el bando opfor
			independent - este briefing solo esta disponible para todo el bando independiente
			civlian - este briefing solo esta disponible para todo el bando civil

	Returns:
		BOOLEAN

	Examples:
		[
			"van a volar en pedazos un cache de municion",
			"csat se cojio a nato",
			"mantener el sigilo a todo costo",
			west
		] call fal_fnc_setupBriefing;
*/

// TODO - Test this
params
[
    ["_mision",    ""],
    ["_situation", ""],
    ["_execution", ""],
    ["_side",      (side player)]
];

if (!hasInterface) exitWith {};

if (side player != _side) exitWith {};

if (_execution != "") then
{
	player createDiaryRecord 
	[
		"Diary",
		[
			"Ejecucion",
			_execution
		]
	];	
};

if (_situation != "") then 
{
	player createDiaryRecord
	[
		"Diary",
		[
			"Situation",
			_situation
		]
	];	
};

if (_mision != "") then 
{
	player createDiaryRecord
	[
		"Diary",
		[
			"Mision",
			_mision
		]
	];	
};

true