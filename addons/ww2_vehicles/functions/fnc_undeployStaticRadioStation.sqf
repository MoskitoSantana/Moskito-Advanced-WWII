#include "script_component.hpp"

params ["_vehicle","_unit"];

_vehicle lock false;
SETVAR(_vehicle,mawii_static_radio_station_deploy_status,false);
_marker = GETVAR(_vehicle,mawii_static_radio_station_marker,"");
_deployedObjects = GETVAR(_vehicle,mawii_static_radio_station_deployed_objects,[]);
if (count _deployedObjects > 0) then { { deleteVehicle _x; } forEach _deployedObjects; };
deleteMarker _marker;