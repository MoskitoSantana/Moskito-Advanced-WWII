#include "script_component.hpp"

params [
	["_object", objNull],
	["_faction", WEAPON_FACTION_USA],
	["_roleClass", ROLE_RIFLEMAN]
];
 

_statement = {
	params ["_target","_player","_roleClass"];

	private _unitClass = _roleClass select 0; 
	private _faction = _roleClass select 1; 
	
	SET_AS_ACE_EOD_IF( _player, IS_ROLE(_unitClass,ROLE_SAPPER) );
	SET_AS_ACE_MEDIC_IF( _player, IS_ROLE(_unitClass,ROLE_MEDIC) );
	SET_AS_ACE_ENGINEER_IF( _player, IS_ROLE(_unitClass,ROLE_SAPPER) );
	
	SET_VANILLA_TRAIT_IF(_player,"Medic",IS_ROLE_BOOL(_unitClass,ROLE_MEDIC) );
	SET_VANILLA_TRAIT_IF(_player, "engineer", IS_ROLE_BOOL(_unitClass,ROLE_SAPPER) );
	SET_VANILLA_TRAIT_IF(_player, "explosiveSpecialist", IS_ROLE_BOOL(_unitClass,ROLE_SAPPER) );

	_player setVariable ["current_player_description", _unitClass, clientOwner];

	[_player, _faction ] call FUNC(setUnitGear);
};

_setObjectAction = [format [ "Armar %1", _roleClass splitString "_" joinString " "], format ["Armar %1 ", _roleClass splitString "_" joinString " "], "", _statement, {true}, {}, [_roleClass, _faction]] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions"], _setObjectAction, true] call ACE_interact_menu_fnc_addActionToObject;