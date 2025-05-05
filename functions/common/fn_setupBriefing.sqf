/*
	Descripcion:
		briefings con mision situacion ejecucion y distincion de bando para que nunca lo usen en su puta vida 

	Parametro(s):
		_mision: STRING - (Opcional, default "" significa sin entrada de mision)

		_situation: STRING - (Opcional, default "" significa sin entrada de situacion)

		_execution: STRING - (Opcional, default "" significa sin entrada de ejecucion)

		_side: puede ser: (Opcional, default side player significa que no hay filtro de bando)
			west - este briefing solo esta disponible para todo el bando bluefor
			east - este briefing solo esta disponible para todo el bando opfor
			independent - este briefing solo esta disponible para todo el bando independiente
			civlian - este briefing solo esta disponible para todo el bando civil

	Ejemplo:
		[
			"van a volar en pedazos un cache de municion jugando como la otan",
			"csat se cojio a la otan hace dos meses xq esta caro el dolar",
			"mantener el sigilo a todo costo o van a ser culeados",
			west
		] call fal_fnc_setupBriefing;
*/

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