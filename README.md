# trubb_spawnGroup
A handful of functions that lets you spawn predefined groups of units and have them move towards a target area  

To call use ```["name_of_start_marker", "name_destination_marker", unit_array] call trubb_fnc_spawnGroup;```

In ```initServer.sqf``` create an array (or arrays) containing the wanted group structure such as ```ei_squad = [B_Soldier_F", "B_Soldier_F"];``` these are then used as part of the call to the functions.

In order to spawn multiple groups, place the call to ```trubb_fnc_spawnGroup``` within a loop.
