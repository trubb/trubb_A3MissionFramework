
// The maximum percentage of casualties a given side can take before automatically losing.
// Comment out or remove any unused side.
trubb_east_casualty_limit = 75;
trubb_indep_casualty_limit = 75;
trubb_west_casualty_limit = 75;

// Count how many players are present at the start of the mission.
// Wait 60s before executing any calls to allow allPlayers to be populated first
/*[] spawn {
	[] spawn {
		sleep 60;
		trubb_east_startCount = [ east ] call trubb_fnc_countPlayers;
		trubb_indep_startCount = [ independent ] call trubb_fnc_countPlayers;
		trubb_west_startCount = [ west ] call trubb_fnc_countPlayers;
	};

	// Every 10 seconds we check if any side has taken too many casualties
	[] spawn {
		waitUntil {
			sleep 10;
			call trubb_fnc_endCondition;
		};
	};
};*/

trubb_wait = false;
[
	{
		trubb_east_start_count = [ east ] call trubb_fnc_countPlayers;
		trubb_indep_start_count = [ independent ] call trubb_fnc_countPlayers;
		trubb_west_start_count = [ west ] call trubb_fnc_countPlayers;
		trubb_wait = true;
	},
	[],
	60 
] call CBA_fnc_waitAndExecute;

[{ trubb_wait },	// condition
	{				// statement
		[] spawn {
			waitUntil {
				sleep 10;
				call trubb_fnc_endCondition;
			};
		};
	},
	[]				// args
] call CBA_fnc_waitUntilAndExecute;
