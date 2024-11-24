#include "script_component.hpp"

params [
	["_unit", objNull],
	["_faction", WEAPON_FACTION_USA],
	["_roleClass", localize "STR_MAWII_ww2_modules_RoleRifleman"]
];
	
	private _unitClass = _unit getVariable ["current_player_description", (localize "STR_MAWII_ww2_modules_RoleRifleman")];
	private _ifSapper = (localize "STR_MAWII_ww2_modules_RoleSapper");
	private _ifPilot = (localize "STR_MAWII_ww2_modules_RolePilot");
	private _ifTankCrew = (localize "STR_MAWII_ww2_modules_RoleTankCrew");
	private _ifMedic = (localize "STR_MAWII_ww2_modules_RoleMedic");

	if (_unitClass in [_ifSapper,_ifTankCrew,_ifPilot]) then {
		_unit setVariable ["ACE_IsEngineer",1,true];
		_unit setUnitTrait ["engineer ", true];
	};
	if (_unitClass in [_ifMedic]) then {
		_unit setVariable ["ace_medical_medicClass",1,true];
		_unit setUnitTrait ["Medic", true];
		_unit setUnitTrait ["loadCoef", 0.4];
	};
	if (_unitClass in [_ifSapper]) then {
		_unit setVariable ["ACE_isEOD",1,true];
		_unit setUnitTrait ["explosiveSpecialist ", true];
	};

	if (_unitClass in [_ifSapper,(localize "STR_MAWII_ww2_modules_RoleATSpecialist"),(localize "STR_MAWII_ww2_modules_RoleMachineGunner"),(localize "STR_MAWII_ww2_modules_RoleAssaultRifleman"),(localize "STR_MAWII_ww2_modules_RoleRTO")]) then {
		_unit setUnitTrait ["loadCoef", 0.3];
	};

SETPVAR(_unit,current_player_description,_roleClass);
//_unit setVariable ["current_player_description", _roleClass, clientOwner];
[_unit, _faction ] call FUNC(setUnitGear);
