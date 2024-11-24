#include "\x\cba\addons\main\script_macros_common.hpp"
#include "\z\ace\addons\main\script_macros.hpp"
#include "role_definition.hpp"

#define CHECK_IF_IS_ACE_EOD(unit) GETVAR((unit),(ACE_isEOD),0) 
#define CHECK_IF_IS_ACE_ENGINEER(unit) GETVAR((unit),ace_isEngineer,0) 
#define CHECK_IF_IS_ACE_MEDIC(unit) GETVAR((unit),ace_medical_medicclass,0)

#define IS_ROLE(unitclass,role) if ((unitclass == role)) then [{1},{0}]
#define IS_ROLE_BOOL(unitclass,role) if ((unitclass == role)) then [{true},{false}]

#define IS_ROLE_VAR(unit,role,target) if (GETVAR((unit),current_player_description,(role)) == (target)) then [{true},{false}]

#define GET_FACTION(faction,squadclass,ambient) (faction) * (squadclass) + (ambient)

#define COMMON_OBJECTS [ "ACE_CableTie" , "ACE_CableTie" , "ACE_CableTie" , "ACE_EarPlugs" , "acex_intelitems_notepad", "ACE_EntrenchingTool" ]
#define COMMON_LINKED_OBJECTS [ "ItemWatch", "ItemCompass", "ItemMap" ]
#define COMMON_MEDICAL_LOADOUT []
#define MEDIC_MEDICAL_LOADOUT []

#define ADD_MAGAZINE_CARGO_ON_VEST(var1,var2,var3,var4) (vestContainer (var1)) addMagazineAmmoCargo [ (var2), (var3), (var4)]
#define ADD_WEAPON_AND_MAGAZINES_ON_VEST(unit,weaponarray) (vestContainer (unit)) addMagazineAmmoCargo [ (weaponarray) select 1 , (weaponarray) select 2, (weaponarray) select 3 ];  (unit) addWeaponGlobal ((weaponarray) select 0);
#define ADD_MAGAZINE_CARGO_ON_BACKPACK(var1,var2,var3,var4) (backpackContainer (var1)) addMagazineAmmoCargo [ (var2), (var3), (var4)]
#define ADD_WEAPON_AND_MAGAZINES_ON_BACKPACK(unit,weaponarray) (backpackContainer (unit)) addMagazineAmmoCargo [ (weaponarray) select 1 , (weaponarray) select 2, (weaponarray) select 3 ];  (unit) addWeaponGlobal ((weaponarray) select 0);

#define SAPPER_TOOLS ["LIB_ToolKit", "ACE_Fortify", "ACE_wirecutter"]
#define ADD_SAPPER_TOOLS(unit) { ADD_ITEM_ON_UNIT((unit),_x,(1)) } forEach SAPPER_TOOLS;

#define ADD_ITEM_ON_UNIT(unit,item,ammount) for "index" from 1 to (ammount) do { (unit) addItem (item); }
#define ADD_ITEM_ON_VEST(unit,item,ammount) if ((unit) canAddItemToVest (item)) then { for "index" from 1 to (ammount) do { (unit) addItemToVest (item); } } else { ADD_ITEM_ON_UNIT((unit),(item),(ammount)) }
#define ADD_ITEM_ON_BACKPACK(unit,item,ammount) if ((unit) canAddItemToBackpack (item)) then { for "index" from 1 to (ammount) do { (unit) addItemToBackpack (item); } } else { ADD_ITEM_ON_UNIT((unit),(item),(ammount)) }
#define ADD_ITEM_ON_UNIFORM(unit,item,ammount) if ((unit) canAddItemToUniform (item)) then { for "index" from 1 to (ammount) do { (unit) addItemToUniform (item); } } else { ADD_ITEM_ON_UNIT((unit),(item),(ammount)) } 

#define RANOM_POS_LAND [(random 0.2) -0.1, (random 0.2) -0.1, 0]