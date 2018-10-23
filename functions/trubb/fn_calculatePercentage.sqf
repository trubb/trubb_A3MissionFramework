params [
	"_playerSide",
	"_playersAtStart",
];

private _condition = { side _x == _playerSide && alive _x };	// we are only interested in players of the specified side that are alive

private _playersCurrent = _condition count (allPlayers - entities "HeadlessClient_F");	// players currently alive on the side provided

// alt do
private _playersCurrent = [_playerSide] call trubb_fn_countPlayers;

private _percentage = ( _playersAtStart - _playersCurrent ) / ( _playersAtStart * 0.01 );	// percentage of players still alive with percent magic

_percentage;	// return the percentage for comparison in a trigger or the like
