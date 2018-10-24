
// to count how many players are present at start of mission
w_startCount = [ west ] call trubb_fnc_countPlayers;
o_startCount = [ east ] call trubb_fnc_countPlayers;
i_startCount = [ independent ] call trubb_fnc_countPlayers;

w_casualtylimit = 75;
o_casualtylimit = 75;
i_casualtylimit = 75;

[] spawn {
	waitUntil {
		sleep 10;
		call trubb_fnc_endCondition;
	};
};
