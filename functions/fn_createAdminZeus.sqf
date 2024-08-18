private _moduleGroup = createGroup sideLogic;
// TODO - Add game master for #loggedAdmin
"ModuleCurator" createUnit
[
	[0,0,0],
	_moduleGroup,
	"this setVariable ['BIS_fnc_initModules_disableAutoActivation', false, true];"
];

true