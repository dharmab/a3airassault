// Mission is only supported in multiplayer
if (!isMultiplayer) exitWith {
    ["SinglePlayer", true, true] call BIS_fnc_endMission;
};

// Process briefing
execVM "briefing.sqf";

// Wait for server to finish
waitUntil {missionNamespace getVariable "mission_tangohunt_init";};
waitUntil {!isNull player};

// Create task for objective
[player, "task_objective", [
	"Attack the enemy infantry force and secure the area marked on the map.",
	"Secure the area",
	"enemy_area"
], objNull, true] call BIS_fnc_taskCreate;

// Sleep forces further execution to wait until mission has started
sleep 0.1;
[] execVM "loadouts\loadouts.sqf";

if (playersNumber west < 4) then {
    hint "You appear to be playing Tango Hunt with fewer than 4 players. While the scenario is fully playable, 4-32 players is recommended for an optimal experience.";
};