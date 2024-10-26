class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {
            "MAWII_ModuleRoleSetUp"
        };
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "cba_main",
            "ace_main",
            "mawii_main",
            "ace_medical_engine",
            "ace_medical_treatment",
            "WW2_Assets_c_Vehicles_StaticWeapons_c_Flak_38",
            "WW2_Core_c_WW2_Core_c",
            "ww2_core_c_if_zzz_lastloaded_c",
            "ww2_assets_c_weapons_infantryweapons_c"
        };
        author = "Moskito Santana";
        url = "https://github.com/MoskitoSantana/mawii";
        is3DENMod = 1;
        VERSION_CONFIG;
        skipWhenMissingDependencies = 1;
    };
};