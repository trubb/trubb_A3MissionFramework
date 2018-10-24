/*
 * Author: Trubb
 * Counts human players that are alive
 * Arguments:
 * 0: side <side>
 *
 * Returns:
 * Number of players who are alive <number>
 */

params [
	"_side"
];

private _players = { (side _x == _side) && (alive _x) } count (allPlayers - entities "HeadlessClient_F");

_players;
