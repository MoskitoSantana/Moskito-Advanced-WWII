#include "script_component.hpp"

params ["_unit", "_faction"];

removeAllItemsWithMagazines _unit;
removeAllWeapons _unit;
removeAllItems _unit;

switch (_faction) do {
	case WEAPON_FACTION_UK : { [_unit,WEAPON_FACTION_UK] call FUNC(equipWeaponsBasedOnFaction);};
	case WEAPON_FACTION_USA : { [_unit,WEAPON_FACTION_USA] call FUNC(equipWeaponsBasedOnFaction); };
	case WEAPON_FACTION_GER : { [_unit,WEAPON_FACTION_GER] call FUNC(equipWeaponsBasedOnFaction); };
	case WEAPON_FACTION_SOV : { [_unit,WEAPON_FACTION_SOV] call FUNC(equipWeaponsBasedOnFaction); };
};

[_unit] call FUNC(addCommonAndLinkedItems);
[_unit] call FUNC(addMedicalLoadout);
[_unit] call FUNC(addFieldRations);


