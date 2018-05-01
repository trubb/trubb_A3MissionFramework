
params ["_trubb_start", "_trubb_end", "_units"];

private _group = [getMarkerPos _trubb_start, EAST, _units ] call BIS_fnc_spawnGroup;

_group addWaypoint [getMarkerPos _trubb_end, 0];
