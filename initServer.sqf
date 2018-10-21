
if (isServer) {
	w_startCount = [ WEST ] call trubb_fnc_countPlayers;	// to count how many players are present at start of mission
};

// call once at start of mission to set a variable like playersAtStart<SIDE>
// put in a trigger and feed calculate percentage with playersAtStart<SIDE> and the side
// could possibly magically solve it by creating a function to do everything automagically for a side and a percentage
// like ["SIDE", "PERCENTAGE"] call checkIfTime2End
// https://github.com/dklollol/Olsen-Framework-Arma-3