#define COMPONENT ww2_vehicles
#define COMPONENT_BEAUTIFIED WW2 Vehicles
#include "\k\mawii\addons\main\script_mod.hpp"

// Disables CBA precaching, which interferes with file patching
#define DISABLE_COMPILE_CACHE

#ifdef DEBUG_ENABLED_WP
    #define DEBUG_MODE_FULL
#endif
    #ifdef DEBUG_SETTINGS_WP
    #define DEBUG_SETTINGS DEBUG_SETTINGS_WP
#endif

#include "\k\mawii\addons\main\script_macros.hpp"