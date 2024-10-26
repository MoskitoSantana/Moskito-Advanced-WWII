#define MAINPREFIX z
#define PREFIX mawii

#include "script_version.hpp"
#define VERSION         MAJOR.MINOR
#define VERSION_STR     MAJOR.MINOR.PATCHLVL.BUILD
#define VERSION_AR      MAJOR,MINOR,PATCHLVL,BUILD
#define VERSION_PLUGIN  MAJOR.MINOR.PATCHLVL.BUILD

#define REQUIRED_VERSION 2.16

#include "\x\cba\addons\main\script_macros_common.hpp"
#include "\x\cba\addons\xeh\script_xeh.hpp"

#ifdef COMPONENT_BEAUTIFIED
    #define COMPONENT_NAME QUOTE(DUI - COMPONENT_BEAUTIFIED)
#else
    #define COMPONENT_NAME QUOTE(DUI - COMPONENT)
#endif