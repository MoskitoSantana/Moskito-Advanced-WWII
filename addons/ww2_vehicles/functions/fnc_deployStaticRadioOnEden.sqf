#include "script_component.hpp"

params ["_vehicle","_status"];

if (_status == false) exitWith { [_vehicle,objNull] call FUNC(undeployStaticRadioStation); };

_side = sideEmpty;

// Stablish deploy status as 1 and lock the vehicle for players mounting

// Radio station position
_vehiclePos = getPos _vehicle;
_vehicleDir = getDir _vehicle;

_tablePosition = [(random [2,3,4]) - 0.1, (random [1,3,5]) - 0.3, 0];
_telegraphpostPosition = [0, (random [2,5,6]) * -1, 0];
_table = [[_vehicle,"GROUND"],"Land_WoodenTable_large_F",1, [ _tablePosition select 0, _tablePosition select 1, 0], (random 20)-10] call BIS_fnc_spawnObjects;
_telegraphpost = [[_vehicle,"GROUND"],"Land_I44_Buildings_Telegraphpost01",1, [ _telegraphpostPosition select 0, _telegraphpostPosition select 1, 0],(random 20)-10] call BIS_fnc_spawnObjects;
_phonePlacePosition = [(random 1) - 0.6, 0, 0];
_phonePlaceCablePosition = [0, (random 1) - 0.1, 0];
_phone = [[(_table select 0),"TOP"],"FP_FF_33", 1, _phonePlacePosition, (random 20)-10] call BIS_fnc_spawnObjects;
_phoneCable = [[(_table select 0),"TOP"],"FP_TK_SU",1, _phonePlaceCablePosition, (random 20)-10] call BIS_fnc_spawnObjects;
//_bunkerPhone = [[(_table select 0),"TOP"],"kif_bunker_phone",1, [0,0,0], (random 20)-10] call BIS_fnc_spawnObjects;
//(_bunkerPhone select 0) attachTo [_vehicle,[1.2,0,-1.3],"doplnovani"];
//(_bunkerPhone select 0) setDir (_vehicleDir + 22);

_objects = [ARR_4(_table,_phone,_phoneCable,_telegraphpost)];

// Map control 
_mapControl = (findDisplay 12) displayctrl 51;
_stationPos = _mapControl posWorldToScreen _vehiclePos;

_marker = createMarker [ format ["Radio_Station %1", mapGridPosition _vehiclePos ], _vehiclePos ];
_marker setMarkerText format ["Field Radio Station  %1", mapGridPosition _vehiclePos]; 
_marker setMarkerShape "ICON";
_marker setMarkerType "loc_Transmitter";
_marker setMarkerColor ([_side,true] call BIS_fnc_sideColor);


SETVAR(_vehicle,mawii_static_radio_station_marker,_marker);
SETVAR(_vehicle,mawii_static_radio_station_deploy_status,true); _vehicle lock true;
_vehicle setVariable [ARR_2('mawii_static_radio_station_deployed_objects',_objects)];