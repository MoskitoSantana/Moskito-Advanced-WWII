#include "\k\mawii\addons\ww2_modules\script_component.hpp"
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