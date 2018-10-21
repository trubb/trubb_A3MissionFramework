params [
	"_playerSide",
	"_playersAtStart",
];

_condition = { side _x == _playerSide && alive _x };	// we are only interested in players of the specified side that are alive

_playersCurrent = _condition count (allPlayers - entities "HeadlessClient_F");	// players currently alive on the side provided

// alt do
_playersCurrent = ["_playerSide"] fn_countPlayers;

_percentage = round ( _playersAtStart - _playersCurrent ) / ( _playersAtStart / 100 );	// percentage of players still alive with percent magic

_percentage;	// return the percentage for comparison in a trigger or the like
