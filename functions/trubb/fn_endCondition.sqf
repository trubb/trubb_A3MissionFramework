private _westPercentage = ["west", w_startCount] call trubb_fn_calculatePercentage;
private _eastPercentage = ["east", e_startCount] call trubb_fn_calculatePercentage;
private _indPercentage = ["east", i_startCount] call trubb_fn_calculatePercentage;

// check if blufor is deadest
if (_westPercentage >= 80) then {

	"w_dead_end" call BIS_fnc_endMission;

};

// check if opfor is deadest
if (_eastPercentage >= 80) then {

	"o_dead_end" call BIS_fnc_endMission;

};

// check if indep is deadest
if (_indPercentage >= 80) then {

	"i_dead_end" call BIS_fnc_endMission;

};
