#include "script_component.hpp"

params [
	["_object", objNull],
	["_faction", WEAPON_FACTION_USA],
	["_roleClass", (localize "STR_MAWII_ww2_modules_RoleSapper")]
];
 
// [player] call ace_common_fnc_isMedic
// [player] call ace_common_fnc_isEngineer
// [player] call ace_common_fnc_isEOD

//Ace-Medic: this setVariable ["ace_medical_medicClass",1,true];
//Ace-Doctor: this setVariable ["ace_medical_medicClass",2,true];
//Ace-EODler: this setVariable ["ACE_isEOD",1,true];
//Ace-Repairman: this setVariable ["ACE_IsEngineer",1,true];
//Ace-Repairpoint: this setVariable ["ACE_isRepairVehicle",1,true];
//Ace-Repairfacility: this setVariable ["ACE_isRepairFacility",1,true];

_statement = {
	params ["_target","_player","_roleClass"];

	private _unitClass = _roleClass select 0; 
	private _faction = _roleClass select 1; 
	
	private _ifSapper = (localize "STR_MAWII_ww2_modules_RoleSapper");
	private _ifPilot = (localize "STR_MAWII_ww2_modules_RolePilot");
	private _ifTankCrew = (localize "STR_MAWII_ww2_modules_RoleTankCrew");
	private _ifMedic = (localize "STR_MAWII_ww2_modules_RoleMedic");

	if (_unitClass in [_ifSapper,_ifTankCrew,_ifPilot]) then {
		_player setVariable ["ACE_IsEngineer",1,true];
		_player setUnitTrait ["engineer ", true];
	};
	if (_unitClass in [_ifMedic]) then {
		_player setVariable ["ace_medical_medicClass",1,true];
		_player setUnitTrait ["Medic", true];
	};
	if (_unitClass in [_ifSapper]) then {
		_player setVariable ["ACE_isEOD",1,true];
	};

	_player setVariable ["current_player_description", _unitClass, clientOwner];

	[_player, _faction ] call FUNC(setUnitGear);
};

_setObjectAction = [format [ (localize "STR_MAWII_ww2_modules_ActionEquip"), _roleClass splitString "_" joinString " "], format [(localize "STR_MAWII_ww2_modules_ActionEquip"), _roleClass splitString "_" joinString " "], "", _statement, {true}, {}, [_roleClass, _faction]] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions"], _setObjectAction, true] call ACE_interact_menu_fnc_addActionToObject;