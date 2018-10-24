params [
	"_pside"
];

//private _condition = { side _x == _side && alive _x };	// we are only interested in players of the specified side that are alive

private _players = { side _x == _pside && alive _x } count (allPlayers - entities "HeadlessClient_F");	// add upp

_players;
