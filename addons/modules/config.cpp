#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"cba_main"};
        author = "Moskito Santana";
        url = "https://github.com/MoskitoSantana/mawii";
        VERSION_CONFIG;
    };
};


#include "includes/CfgFunctions.hpp"
#include "includes/CfgVehicles.hpp"