params [
	"_playerSide",
	"_playersAtStart"
];

private _playersAlive = [_playerSide] call trubb_fnc_countPlayers;

private _percentage = ( _playersAtStart - _playersAlive ) / ( _playersAtStart * 0.01 );	// percentage of players not alive by magic

_percentage;	// return the percentage for comparison in a trigger or the like
