#include "script_component.hpp"

params ["_vehicle","_unit"];

[30, [_vehicle, _unit], {
	params["_args"];
    _args params ["_vehicle","_unit"];
	_side = side _unit;

	_vehicle lock true;

	_vehiclePos = getPos _vehicle;
	_vehicleDir = getDir _vehicle;

	createSoundSource ["radio_noise_low", _vehiclePos, [], 10]; 
	// [center, minDist, maxDist, objDist, waterMode, maxGrad, shoreMode, blacklistPos, defaultPos] call BIS_fnc_findSafePos; 

	_tablePosition = [(random [2,3,4]) - 0.1, (random [1,3,5]) - 0.3, 0];
	_telegraphpostPosition = [0, (random [2,5,6]) * -1, 0];

	_table = [[_vehicle,"GROUND"],"Land_WoodenTable_large_F",1, [ _tablePosition select 0, _tablePosition select 1, 0], (random 20)-10] call BIS_fnc_spawnObjects;
	_telegraphpost = [[_vehicle,"GROUND"],"Land_I44_Buildings_Telegraphpost01",1, [ _telegraphpostPosition select 0, _telegraphpostPosition select 1, 0],(random 20)-10] call BIS_fnc_spawnObjects;
	
	_phonePlacePosition = [0, 0, 0];
	_phonePlaceCablePosition = [0, (_phonePlacePosition select 0) - 0.1, 0];

	_phone = [[(_table select 0),"TOP"],"FP_FF_33", 1, _phonePlacePosition, (random 20)-10] call BIS_fnc_spawnObjects;
	_phoneCable = [[(_table select 0),"TOP"],"FP_TK_SU",1, _phonePlaceCablePosition, (random 20)-10] call BIS_fnc_spawnObjects;
	
	_table = [_table select 0] call BIS_fnc_replaceWithSimpleObject;

	_objects = [ARR_4(_table,_phone,_phoneCable,_telegraphpost)];
	
	_mapControl = (findDisplay 12) displayctrl 51;
	_stationPos = _mapControl posWorldToScreen _vehiclePos;

	_marker = createMarker [  format ["Radio_Station %1", mapGridPosition _vehiclePos ], _vehiclePos];
	_marker setMarkerText format ["Field Radio Station  %1", mapGridPosition _vehiclePos]; 
	_marker setMarkerShape "ICON";
	_marker setMarkerType "loc_Transmitter";
	_marker setMarkerColor ([_side,true] call BIS_fnc_sideColor);

	SETVAR(_vehicle,mawii_static_radio_station_marker,_marker);
	SETVAR(_vehicle,mawii_static_radio_station_deploy_status,true); 
	_vehicle setVariable [ARR_2('mawii_static_radio_station_deployed_objects',_objects)];

	hint "Radio Station Deployed";
	}
	, {hint "Radio Station Deploy Fail!"}, "Deploying Static Radio Station"] call ace_common_fnc_progressBar;


// QUOTE((GVAR(enableActions) == 1 || {GVAR(enableActions) != 2 && {vehicle _target != _target && {vehicle _target == vehicle _player}}}));
