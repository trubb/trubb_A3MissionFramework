
params ["_trubb_start", "_trubb_end", "_vehicletype"];

private _group = [getMarkerPos _trubb_start, 180, _vehicletype, EAST] call BIS_fnc_spawnVehicle;

_group addWaypoint [getMarkerPos _trubb_end, 0];

_group setFormation "LINE";
_group setCombatMode "RED";
_group deleteGroupWhenEmpty true;

_wp = _group addWaypoint [getMarkerPos _trubb_end, 0];
_wp setWaypointType "SAD";

_group;
