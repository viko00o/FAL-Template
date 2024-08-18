params
[
	["_fal_execution", ""],
	["_fal_situation", ""],
	["_fal_mision", ""]
];

if (_fal_execution != "") then
{
	player createDiaryRecord 
	[
		"Diary",
		[
			"Ejecucion",
			format["%1", _fal_execution];
		]
	];	
};

if (_fal_situation != "") then
{
	player createDiaryRecord
	[
		"Diary",
		[
			"Situation",
			format["%1", _fal_situation];
		]
	];
};

if (_fal_mision != "") then
{
	player createDiaryRecord
	[
		"Diary",
		[
			"Mision",
			format["%1", _fal_mision];
		]
	];	
};

true