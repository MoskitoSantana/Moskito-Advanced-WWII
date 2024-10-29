#include "script_component.hpp"

params [
	["_unit", objNull],
	["_faction", WEAPON_FACTION_USA],
	["_roleClass", ROLE_RIFLEMAN]
];
 

SET_AS_ACE_EOD_IF(_unit,IS_ROLE(_roleClass,ROLE_SAPPER));
SET_AS_ACE_MEDIC_IF(_unit,IS_ROLE(_roleClass,ROLE_MEDIC));
SET_AS_ACE_ENGINEER_IF(_unit,IS_ROLE(_roleClass,ROLE_SAPPER));

SET_VANILLA_TRAIT_IF(_unit,Medic,IS_ROLE_BOOL(_roleClass,ROLE_MEDIC));
SET_VANILLA_TRAIT_IF(_unit,engineer,IS_ROLE_BOOL(_roleClass,ROLE_SAPPER));
SET_VANILLA_TRAIT_IF(_unit,explosiveSpecialist,IS_ROLE_BOOL(_roleClass,ROLE_SAPPER));

SETPVAR(_unit,current_player_description,_roleClass);
//_unit setVariable ["current_player_description", _roleClass, clientOwner];
[_unit, _faction ] call FUNC(setUnitGear);
