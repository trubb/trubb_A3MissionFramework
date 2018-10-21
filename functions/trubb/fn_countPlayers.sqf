params [
	"_side"
];

_condition = { side _x == _side && alive _x };	// we are only interested in players of the specified side that are alive

_players = _condition count (allPlayers - entities "HeadlessClient_F");

_players;
