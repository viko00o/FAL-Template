params
[
	["_killer", nil],
	["_killed", nil]
];

_messages = 
[
	"%1 mando a las 6 noches con dopela a %2",
	"%1 aplasto con sus nalgas a %2",
	"%1 le comento el precio del dolar a %2",
	"%1 se culeo a %2",
	"%1 le explico el lore de Warhammer a %2",
	"%1 se yiffeo a %2",
	"%1 puso a hacer la noni a %2",
	"%1 demasyo a %2",
	"%1 dejo inconsciente a %2",
	"%1 nismeo a %2",
	"%1 manoseo a %2",
	"%1 le dio un beso en la boca a %2",
	"%1 le saco la lengua a %2",
	"%1 le toco la cola a %2",
	"%1 esta disparando, deberias agacharte %2...",
	"%1 es fan del lolicon, cuidado %2",
	"%1 le dijo milsimer a %2",
	"%1 le tiró el cuerito a %2",
	"%1 freno las funciones vitales de %2",
	"%1 Dividió por Cero a %2"
];

format [selectRandom _messages, _killer, _killed] remoteExec ["systemChat"];

true