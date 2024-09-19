params
[
	["_doTasks", false]
];

if (!_doTasks) exitWith {true};

[
	true,
	["objEjemplo", ""],
	["Descripcion Ejemplo", "Titulo Ejemplo", ""],
	objNull,
	"CREATED",
	10,
	true,
	"meet",
	false
] call BIS_fnc_taskCreate;

true