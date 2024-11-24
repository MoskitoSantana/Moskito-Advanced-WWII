#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "cba_main",
            "ace_main",
        };
        author = "Moskito Santana";
        VERSION_CONFIG;
    };

    //class XADDON: ADDON { // just in-case anything requires "acex_main"
    //    units[] = {};
    //    weapons[] = {};
    //};
};

class CfgMods {
    class PREFIX {
        dir = "@mawii";
        name = "Moskito Santana Advanced WWII";
        picture = "";
        hidePicture = "true";
        hideName = "true";
        actionName = "";
        action = "";
        description = "";
    };
};

#include "cfg\CfgFaces.hpp"