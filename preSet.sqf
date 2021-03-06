/*
This script is defined as a pre-init function in description.ext, meaning it runs before the map initialises.
*/
#include "logic\preInit.sqf"
#include "logic\activeMods.sqf"

if (isServer) then {
	//Randomizing unit presence variables using caran_randInt and caran_presenceArray
	
	//Define strings to search for in active addons
	_checkList = [
		"ace_common",
		"task_force_radio",
		"acre_"
	];
	
	//Check mod checklist against active addons
	_checkList call caran_initModList;
};