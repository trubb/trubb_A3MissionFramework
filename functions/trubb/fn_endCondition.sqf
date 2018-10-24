private _westPercentage = ["west", w_startCount] call trubb_fnc_calculatePercentage;
private _eastPercentage = ["east", e_startCount] call trubb_fnc_calculatePercentage;
private _indPercentage = ["east", i_startCount] call trubb_fnc_calculatePercentage;

// check if blufor is deadest
if (_westPercentage >= 80) exitWith {

	"w_dead_end" call BIS_fnc_endMissionServer;
	true;

};

// check if opfor is deadest
if (_eastPercentage >= 80) exitWith {

	"o_dead_end" call BIS_fnc_endMissionServer;
	true;

};

// check if indep is deadest
if (_indPercentage >= 80) exitWith {

	"i_dead_end" call BIS_fnc_endMissionServer;
	true;

};

false;