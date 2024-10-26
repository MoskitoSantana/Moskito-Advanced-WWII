#include "script_component.hpp"

params ["_unit"];

forunit = _unit;
_isMedic = _unit getVariable ["ace_medical_medicclass", 0];

private _medicalCargo = [
	["ACE_painkillers", 1] , 
	["ACE_quikclot" , 6] , 
	["ACE_packingBandage", 6], 
	["ACE_elasticBandage",6],
	["ACE_fieldDressing", 6],
	["ACE_tourniquet", 4],
	["ACE_salineIV_250",1],
	["ACE_plasmaIV_250",1],
	["ACE_splint",4] 
];

private _medicMedicalCargo = [
	["ACE_elasticBandage", 30],
	["ACE_packingBandage", 30], 
	["ACE_fieldDressing", 25],
	["ACE_quikclot" , 25] , 
	["ACE_morphine",20],
	["ACE_tourniquet", 4],
	["ACE_plasmaIV_500", 5],
	["ACE_salineIV", 2],
	["ACE_splint",4],
	["ACE_tourniquet", 4],
	["ACE_surgicalKit",1]
];

if (_isMedic != 0) then {
	{ ADD_ITEM_ON_BACKPACK(forunit,_x select 0,_x select 1); } forEach _medicMedicalCargo; 
} else {
	{ ADD_ITEM_ON_BACKPACK(forunit,_x select 0,_x select 1);	} forEach _medicalCargo; 
};
