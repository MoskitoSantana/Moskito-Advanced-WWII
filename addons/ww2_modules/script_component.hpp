#define COMPONENT modules
#define COMPONENT_BEAUTIFIED Modules
#include "\z\mawii\addons\main\script_mod.hpp"

// Disables CBA precaching, which interferes with file patching
#define DISABLE_COMPILE_CACHE

#ifdef DEBUG_ENABLED_WP
    #define DEBUG_MODE_FULL
#endif
    #ifdef DEBUG_SETTINGS_WP
    #define DEBUG_SETTINGS DEBUG_SETTINGS_WP
#endif

#include "\z\mawii\addons\main\script_macros.hpp"

// Roles

#define DISPLAY_ROLE_NAME_RTO "RTO"
#define DISPLAY_ROLE_NAME_MEDIC "Medic"
#define DISPLAY_ROLE_NAME_PILOT "Pilot"
#define DISPLAY_ROLE_NAME_SAPPER "Sapper"
#define DISPLAY_ROLE_NAME_SNIPPER "Sniper"
#define DISPLAY_ROLE_NAME_RIFLEMAN "Rifleman"
#define DISPLAY_ROLE_NAME_TANK_CREW "Tank Crew"
#define DISPLAY_ROLE_NAME_SQUAD_LEADER "Squad Leader"
#define DISPLAY_ROLE_NAME_AT_SPECIALIST "AT Specialist"
#define DISPLAY_ROLE_NAME_MACHINNE_GUNNER "Machinne Gunner"
#define DISPLAY_ROLE_NAME_ASSAULT_RIFLEMAN "Assault Rifleman"
#define DISPLAY_ROLE_NAME_FIRST_CLASS_MACHINNE_GUNNER "First Class Machinne Gunner"

#define ROLE_RTO "RTO"
#define ROLE_MEDIC "Medic"
#define ROLE_PILOT "Pilot"
#define ROLE_SAPPER "Sapper"
#define ROLE_SNIPPER "Sniper"
#define ROLE_RIFLEMAN "Rifleman"
#define ROLE_TANK_CREW "Tank_Crew"
#define ROLE_SQUAD_LEADER "Squad_Leader"
#define ROLE_AT_SPECIALIST "AT_Specialist"
#define ROLE_MACHINNE_GUNNER "Machinne_Gunner"
#define ROLE_ASSAULT_RIFLEMAN "Assault_Rifleman"
#define ROLE_FIRST_CLASS_MACHINNE_GUNNER "First_Class_Machinne_Gunner"

