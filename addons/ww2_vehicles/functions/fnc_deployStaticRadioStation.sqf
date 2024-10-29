#include "script_component.hpp"

params ["_vehicle","_unit"];

_side = side _unit;

// Stablish deploy status as 1 and lock the vehicle for players mounting
SETVAR(_vehicle,mawii_static_radio_station_deploy_status,1); _vehicle lock true;

// radio station position
_vehiclePos = getPos _vehicle;
_vehicleDir = getDir _vehicle;

// radio station anthena
_anthena = "";

_phone = "FP_FF_33";
_cable = "FP_TK_SU";

_table = createVehicle ["Land_WoodenTable_large_F",[(_vehiclePos select 0) ,( _vehiclePos select 1) - 3, 0]];
_table setDir (getDir _vehicle);


//[[_vehicle,"GROUND"],"Land_WW2_CamoNet_Tank",1,[0,0,0],1] call BIS_fnc_spawnObjects;
[[_vehicle,"GROUND"],"Land_I44_Buildings_Telegraphpost01",1,[-1,-6,0],1] call BIS_fnc_spawnObjects;
[[_vehicle,"GROUND"],"Land_WW2_CamoNet_Tank",1,[0.0,0.0,0],(vectorDir _vehicle)] call BIS_fnc_spawnObjects;
[[_table,"TOP"],_phone,1,[-0.15,-0.1,0],1] call BIS_fnc_spawnObjects;
[[_table,"TOP"],_cable,1,[0.4,-0.7,0],1] call BIS_fnc_spawnObjects;

// cammo tent
//_camotent = createVehicle ["Land_WW2_CamoNet_Tank", _vehiclePos]; 
//_camotent setDir (_vehicleDir) * -1;


// ai radio operators ambient

_mapControl = (findDisplay 12) displayctrl 51;
_stationPos = _mapControl posWorldToScreen _vehiclePos;


_marker = createMarker [ format ["Radio_Station %1 %2", _stationPos select 0 , _stationPos select 1 ], _vehiclePos ];
_marker setMarkerText format ["Field Radio Station  %1 %2", _stationPos select 0 , _stationPos select 1]; 
_marker setMarkerShape "ICON";
_marker setMarkerType "loc_Transmitter";
_marker setMarkerColor ([_side,true] call BIS_fnc_sideColor);

[_vehicle,_side] call FUNC(mapNearestSquads);


