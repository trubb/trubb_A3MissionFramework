
// Count how many players are present at the start of the mission.
// Comment out or remove any unused side.
trubb_east_startCount = [ east ] call trubb_fnc_countPlayers;
trubb_indep_startCount = [ independent ] call trubb_fnc_countPlayers;
trubb_west_startCount = [ west ] call trubb_fnc_countPlayers;

// The maximum percentage of casualties a given side can take before automatically losing.
// Comment out or remove any unused side.
trubb_east_casualtyLimit = 75;
trubb_indep_casualtyLimit = 75;
trubb_west_casualtyLimit = 75;

// Every 10 seconds we check if any side has taken too many casualties
[] spawn {
	waitUntil {
		sleep 10;
		call trubb_fnc_endCondition;
	};
};
