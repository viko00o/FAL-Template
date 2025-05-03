// TODO - Test this
params
[
    ["_execution", ""],
    ["_situation", ""],
    ["_mision",    ""],
    ["_side",      ""]
];

if (!hasInterface) exitWith {};

if (side player != _side) exitWith {};

player createDiaryRecord 
[
	"Diary",
	[
		"Ejecucion",
		_execution
	]
];

player createDiaryRecord
[
	"Diary",
	[
		"Situation",
		_situation
	]
];

player createDiaryRecord
[
	"Diary",
	[
		"Mision",
		_mision
	]
];

true