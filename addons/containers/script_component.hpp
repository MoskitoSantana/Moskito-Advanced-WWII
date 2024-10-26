#define COMPONENT modules
#define COMPONENT_BEAUTIFIED Modules
#include "~MAINPREFIX~\~PREFIX~\addons\main\script_mod.hpp"

// Disables CBA precaching, which interferes with file patching
#define DISABLE_COMPILE_CACHE

#ifdef DEBUG_ENABLED_WP
    #define DEBUG_MODE_FULL
#endif
    #ifdef DEBUG_SETTINGS_WP
    #define DEBUG_SETTINGS DEBUG_SETTINGS_WP
#endif

#include "~MAINPREFIX~\~PREFIX~\addons\main\script_macros.hpp"
