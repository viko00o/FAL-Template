params
[
	["_fal_execution", ""],
	["_fal_situation", ""],
	["_fal_mision", ""],
	["_doBriefing", false]
];

if(!_doBriefing) exitWith {};

player createDiaryRecord 
[
	"Diary",
	[
		"Ejecucion",
		_fal_execution
	]
];	

player createDiaryRecord
[
	"Diary",
	[
		"Situation",
		_fal_situation
	]
];

player createDiaryRecord
[
	"Diary",
	[
		"Mision",
		_fal_mision
	]
];	


true