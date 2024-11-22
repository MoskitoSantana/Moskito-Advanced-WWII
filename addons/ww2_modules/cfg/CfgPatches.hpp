class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {
            "MAWII_ModuleRoleSelectorForGroups",
            "MAWII_ModuleRoleSelector",
            "MAWII_ModuleFakAmbient"
        };
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "cba_main",
            "ace_main",
            "mawii_main",
            "ace_common",
            "ace_field_rations",
            "ace_medical_treatment",
            "ace_flashlights",
            "WW2_Assets_c_Weapons_Misc_c_Arsenal",
            "WW2_Core_c_WW2_EditorPreviews_c"
        };
        author = "Moskito Santana";
        url = "https://github.com/MoskitoSantana/mawii";
        is3DENMod = 1;
        VERSION_CONFIG;
        skipWhenMissingDependencies = 1;
    };
};