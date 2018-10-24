/*
 * Author: Trubb
 * Checks if any of the sides in the mission have lost enough
 * soldiers to warrant retreating from the battlefield.
 *
 * COMMENT OUT OR REMOVE ANY UNUSED SIDE
 *
 * Arguments:
 * w/e/i_casualtyLimit <number> - set in initServer.sqf, can also be changed during the game.
 *
 * Returns:
 * State <boolean>
 */

private _bluforPercentage = [west, blufor_startCount] call trubb_fnc_calculatePercentage;
private _indepPercentage = [independent, indep_startCount] call trubb_fnc_calculatePercentage;
private _opforPercentage = [east, opfor_startCount] call trubb_fnc_calculatePercentage;

// check if blufor is deadest
if (_bluforPercentage >= blufor_casualtyLimit) exitWith {
	"b_dead_end" call BIS_fnc_endMissionServer;
	true;
};

// check if indep is deadest
if (_indepPercentage >= indep_casualtylimit) exitWith {
	"i_dead_end" call BIS_fnc_endMissionServer;
	true;
};

// check if opfor is deadest
if (_opforPercentage >= opfor_casualtyLimit) exitWith {
	"o_dead_end" call BIS_fnc_endMissionServer;
	true;
};

false;
