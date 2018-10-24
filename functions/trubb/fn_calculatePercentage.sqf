/*
 * Author: Trubb
 * Calculates the percentage of dead players for a team
 * Arguments:
 * 0: side <side>
 * 1: playersAtStart <number>
 *
 * Returns:
 * Percentage of players who are dead (0-100) <number>
 */

params [
	"_side",
	"_playersAtStart"
];

private _playersAlive = [_side] call trubb_fnc_countPlayers;

private _percentage = ( _playersAtStart - _playersAlive ) / ( _playersAtStart * 0.01 );

_percentage;
