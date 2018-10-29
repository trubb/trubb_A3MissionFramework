/*
 * Author: Trubb
 * Checks if the side has lost enough soldiers
 * to warrant retreating from the battlefield.
 *
 * Arguments:
 * 0: side <side>
 * 1: startCount <number>
 * 2: casualtyLimit <number>
 *
 * Returns:
 * state <boolean>
 */

params [
	"_trubb_side",
	"_trubb_casualty_limit",
	"_trubb_start_count"
];

if (_trubb_start_count ==  0) exitWith { false };

private _casualties = [_trubb_side, _trubb_start_count] call trubb_fnc_calculatePercentage;

if (_casualties >= _trubb_casualty_limit) exitWith {
	switch (_trubb_side) do { 
		case west : {"trubb_b_dead_end" call BIS_fnc_endMissionServer;}; 
		case independent : {"trubb_i_dead_end" call BIS_fnc_endMissionServer;};
		case east : {"trubb_o_dead_end" call BIS_fnc_endMissionServer;};
	};
};
