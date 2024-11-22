class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {
            "MAWII_US_RADIO_TRUCK",
            "MAWII_SOV_RADIO_TRUCK",
            "MAWII_GER_RADIO_TRUCK"
        };
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "cba_main",
            "ace_main",
            "ace_common",
            "mawii_main",
            "mawii_ww2_modules",
            "WW2_Assets_c_Vehicles_Wheeled_c_GMC",
            "WW2_Core_c_WW2_EditorPreviews_c",
            "WW2_Assets_c_Vehicles_Pictures_c"
        };
        author = "Moskito Santana";
        url = "https://github.com/MoskitoSantana/mawii";
        is3DENMod = 0;
        VERSION_CONFIG;
        skipWhenMissingDependencies = 1;
    };
};