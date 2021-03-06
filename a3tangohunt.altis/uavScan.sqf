/*
Main control for UAV scanner.

The UAV scanner highlights enemy locations with red dots on the map. There are three operation modes, selectable in 
description.ext:

* Disabled: The scanner is disabled. This script stops and no red dots appear.
* Intermitted: The scanner is accurate to within 100 meters and updates every 90 seconds.
* Real-time: The scanner is accurate to within 25 meters and updates every 5 seconds.

This script must be run on its own thread, as it does not exit or return any value. It is intended to run until the 
mission ends (i.e. hard victory/defeat condition or return to lobby).
*/
if (!isServer) exitWith {};

_param_uav_scan_mode = ["Uav", 1] call BIS_fnc_getParamValue;

_UAV_SCAN_DISABLE = 0;
_UAV_SCAN_INTERMITTENT = 1;
_UAV_SCAN_REAL_TIME = 2;

_exit_flag = false;
_uav_scan_radius = 0;
_uav_scan_interval = 1;
switch (_param_uav_scan_mode) do {
	case _UAV_SCAN_DISABLE:
	{
		_exit_flag = true;
	};
	case _UAV_SCAN_INTERMITTENT:
	{
		_uav_scan_radius = 100;
		_uav_scan_interval = 90;
	};
	case _UAV_SCAN_REAL_TIME:
	{
		_uav_scan_radius = 25;
		_uav_scan_interval = 5;
	};
	default
	{
		_exit_flag = true;
	};
};

if (_exit_flag) exitWith {};

_marker_names = [];
_marker_id_sequence = 0;

waitUntil {missionNamespace getVariable "mission_tangohunt_init";};

waitUntil {
	{
		deleteMarker _x;
	} forEach _marker_names;

	_marker_names = [];
	{
		if (alive _x && side _x == east) then {
			_marker_name = format ["uav_scan_%1", _marker_id_sequence];
			_marker_id_sequence = _marker_id_sequence + 1;

			_marker_position = [position _x, random _uav_scan_radius, random 360] call TH_fnc_computeOffset;
			
			_marker = createMarker [_marker_name, _marker_position];
			_marker_name setMarkerShape "ICON";
			_marker_name setMarkerType "mil_dot_noshadow";
			_marker_name setMarkerColor "ColorRed";

			_marker_names = _marker_names + [_marker_name];

		};
	} forEach allUnits;

	sleep _uav_scan_interval;
	// intentional infinite loop
	false;
};
true;
