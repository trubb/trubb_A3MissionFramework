
// to count how many players are present at start of mission
if (isServer) {
	w_startCount = [ west ] call trubb_fnc_countPlayers;
	publicVariable w_startCount;
	o_startCount = [ east ] call trubb_fnc_countPlayers;
	publicVariable w_startCount;
	i_startCount = [ independent ] call trubb_fnc_countPlayers;
	publicVariable w_startCount;
};
