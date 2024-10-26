#include "\z\mawii\addons\ww2_modules\script_component.hpp"
#include "us_weapons.hpp"
#include "uk_weapons.hpp"
#include "ger_weapons.hpp"
#include "sov_weapons.hpp"
#include "factions.hpp"

#define DEFAULT_FACTION 0
#define DEFAULT_SQUAD_CLASS 0
#define DEFAULT_AMBIENT_TYPE 0

#define FACTION_USA 0
#define AMBIENT_EUROPE 0
#define SQUAD_PARATROOPERS 0

#define CHECK_IF_IS_ACE_EOD(unit) (unit) getVariable ["ACE_isEOD", 0]
#define CHECK_IF_IS_ACE_ENGINEER(unit) (unit) getVariable ["ace_isEngineer", 0]
#define CHECK_IF_IS_ACE_MEDIC(unit) (unit) getVariable ["ace_medical_medicclass", 0]

#define SET_AS_ACE_EOD_IF(unit,condition) (unit) setVariable ["ACE_isEOD", (condition), true]
#define SET_AS_ACE_ENGINEER_IF(unit,condition) (unit) setVariable ["ace_isEngineer", (condition), true]
#define SET_AS_ACE_MEDIC_IF(unit,condition) (unit) setVariable ["ace_medical_medicclass", (condition), true]

#define SET_VANILLA_TRAIT_IF(unit,trait,value) (unit) setUnitTrait [ (trait) , (value) ]

#define IS_ROLE(unitclass,role) if (unitclass == role) then [{1},{0}]
#define IS_ROLE_BOOL(unitclass,role) if (unitclass == role) then [{true},{false}]


#define GET_FACTION(faction,squadclass,ambient) (faction) * (squadclass) + (ambient)

#define COMMON_OBJECTS [ "ACE_CableTie" , "ACE_CableTie" , "ACE_CableTie" , "ACE_EarPlugs" , "acex_intelitems_notepad", "ACE_EntrenchingTool" ]
#define COMMON_LINKED_OBJECTS [ "ItemWatch", "ItemCompass", "ItemMap", "LIB_Binocular_US" ]
#define COMMON_MEDICAL_LOADOUT []
#define MEDIC_MEDICAL_LOADOUT []

#define ADD_MAGAZINE_CARGO_ON_VEST(var1,var2,var3,var4) (vestContainer (var1)) addMagazineAmmoCargo [ (var2), (var3), (var4)]
#define ADD_WEAPON_AND_MAGAZINES_ON_VEST(unit,weaponarray) (vestContainer (unit)) addMagazineAmmoCargo [ (weaponarray) select 1 , (weaponarray) select 2, (weaponarray) select 3 ];  (unit) addWeaponGlobal ((weaponarray) select 0);
#define ADD_MAGAZINE_CARGO_ON_BACKPACK(var1,var2,var3,var4) (backpackContainer (var1)) addMagazineAmmoCargo [ (var2), (var3), (var4)]
#define ADD_WEAPON_AND_MAGAZINES_ON_BACKPACK(unit,weaponarray) (backpackContainer (unit)) addMagazineAmmoCargo [ (weaponarray) select 1 , (weaponarray) select 2, (weaponarray) select 3 ];  (unit) addWeaponGlobal ((weaponarray) select 0);

#define SAPPER_TOOLS ["LIB_ToolKit", "ACE_Fortify", "ACE_wirecutter"]
#define ADD_SAPPER_TOOLS(unit) { ADD_ITEM_ON_UNIT((unit),_x,(1)) } forEach SAPPER_TOOLS;

#define ADD_ITEM_ON_UNIT(unit,item,ammount) for "index" from 1 to (ammount) do { (unit) addItem (item); }
#define ADD_ITEM_ON_VEST(unit,item,ammount) for "index" from 1 to (ammount) do { (unit) addItemToVest (item); }
#define ADD_ITEM_ON_BACKPACK(unit,item,ammount) for "index" from 1 to (ammount) do { (unit) addItemToBackpack (item); }
#define ADD_ITEM_ON_UNIFORM(unit,item,ammount) for "index" from 1 to (ammount) do { (unit) addItemToUniform (item); }

#define ADD_UNIFORM_BASED_ON(unit,medic_uniforms,nco_uniforms,soldier_uniforms,pilot_uniforms,tankcrewuniforms) removeUniform (unit);\
 private _unitrole = (unit) getVariable ["current_player_description",ROLE_RIFLEMAN];\
 switch (_unitrole) do { \
	case ROLE_MEDIC: { (unit) forceAddUniform (selectRandom (medic_uniforms)); }; \
	case ROLE_SQUAD_LEADER: { (unit) forceAddUniform (selectRandom (nco_uniforms)); }; \
	default { (unit) forceAddUniform (selectRandom (soldier_uniforms)); };\
 }

#define ADD_HELMET_BASED_ON(unit,medic_h,nco_h,soldier_h,pilot_h,tankcrew_h) removeHeadgear (unit);\
 private _unitrole = (unit) getVariable ["current_player_description",ROLE_RIFLEMAN];\
 switch (_unitrole) do { \
	case ROLE_MEDIC: { (unit) addHeadgear (selectRandom (medic_h)); }; \
	case ROLE_SQUAD_LEADER: { (unit) addHeadgear (selectRandom (nco_h)); }; \
	default { (unit) addHeadgear (selectRandom (soldier_h)); };\
 }

 #define ADD_BACKPACK_BASED_ON(unit,sapper_b,pilot_b,soldier_b,rto_b) removeBackpack (unit);\
 private _unitrole = (unit) getVariable ["current_player_description",ROLE_RIFLEMAN];\
 switch (_unitrole) do { \
	case ROLE_SAPPER : { (unit) addBackpack (selectRandom (sapper_b)); }; \
	case ROLE_AT_SPECIALIST : { (unit) addBackpack (selectRandom (sapper_b)); }; \
	case ROLE_RTO : { (unit) addBackpack (selectRandom (rto_b)); }; \
	case ROLE_PILOT : { (unit) addBackpack (selectRandom (pilot_b)); }; \
	default { (unit) addBackpack (selectRandom (soldier_b)); };\
 };\
  {(unit) removeItemFromBackpack _x; } forEach backpackItems (unit)

 
//#define MEDICAL_INFANTRY_EQUIPMENT
//#define MEDICAL_MEDIC_EQUIPMENT