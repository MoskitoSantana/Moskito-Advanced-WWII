class MAWII_ModuleRoleSelector : MAWII_BaseModule {
    scope = 2;
    displayName = "$STR_MAWII_ww2_modules_ObjectRoleSelectorClassDisplayName";
    icon = "\k\mawii\addons\ww2_modules\data\object_role_setup.paa";
    category = "MAWII";

    function = QFUNC(moduleRoleSelector);
    functionPriority = 1;
    isGlobal = 2;
    isTriggerActivated = 0;
    isDisposable = 0;
    is3DEN = 1;


    canSetArea = 0;
    canSetAreaShape = 0;
    canSetAreaHeight = 0;
    
    class AttributeValues {
        size3[] = { 100, 100, -1 };
        isRectangle = 0;
    };

     class Attributes: AttributesBase {
        class FactionSelector : Combo {
            property = "MAWII_ModuleRoleSetUp_Role";
            displayName = "$STR_MAWII_ww2_modules_ClassAttributePickFaction";
            tooltip = "Selecciona una faccion para los equipamientos";
            typeName = "NUMBER";
            defaultValue = 0x771;
    
            class Values {
            	class UK { name = "$STR_MAWII_ww2_modules_FactionUK";	value = 0x770; };
            	class USA { name = "$STR_MAWII_ww2_modules_FactionUSA";	value = 0x771; }; 
            	class GER { name = "$STR_MAWII_ww2_modules_FactionGermany";	value = 0x772; };
            	class SOV { name = "$STR_MAWII_ww2_modules_FactionSoviets";	value = 0x773; };
            };

        };

        class OnStart : Checkbox {
            property = QGVAR(MAWII_ModuleRoleSelector_OnStart);
            displayName = "$STR_MAWII_ww2_modules_ObjectRoleSelectorClassAttributeOnStart";
            tooltip = "";
            defaultValue = "true";
            typeName = "BOOL";
        };

        class RoleRTO : Checkbox {
            property = QGVAR(MAWII_ModuleRoleSelector_RoleRTO);
            displayName = "$STR_MAWII_ww2_modules_RoleRTO";
            tooltip = "";
            defaultValue = "true";
            typeName = "BOOL";
        };

        class RoleMedic : Checkbox {
            property = QGVAR(MAWII_ModuleRoleSelector_RoleMedic);
            displayName = "$STR_MAWII_ww2_modules_RoleMedic";
            tooltip = "";
            defaultValue = "true";
            typeName = "BOOL";
        };
        class RoleSapper : Checkbox {
            property = QGVAR(MAWII_ModuleRoleSelector_RoleSapper);
            displayName = "$STR_MAWII_ww2_modules_RoleSapper";
            tooltip = "";
            defaultValue = "true";
            typeName = "BOOL";
        };
        class RoleSquadLeader : Checkbox {
            property = QGVAR(MAWII_ModuleRoleSelector_RoleSquadLeader);
            displayName = "$STR_MAWII_ww2_modules_RoleSquadLeader";
            tooltip = "";
            defaultValue = "true";
            typeName = "BOOL";
            
        };
        class RoleRifleman : Checkbox {
            property = QGVAR(MAWII_ModuleRoleSelector_RoleRifleman);
            displayName = "$STR_MAWII_ww2_modules_RoleRifleman";
            tooltip = "";
            defaultValue = "true";
            typeName = "BOOL";
        };
        class RoleMachinneGunner : Checkbox {
            property = QGVAR(MAWII_ModuleRoleSelector_RoleMachinneGunner);
            displayName = "$STR_MAWII_ww2_modules_RoleMachineGunner";
            tooltip = "";
            defaultValue = "true";
            typeName = "BOOL";
        };
        class RoleFirstClassMachinneGunner : Checkbox {
            property = QGVAR(MAWII_ModuleRoleSelector_RoleFirstClassMachinneGunner);
            displayName = "$STR_MAWII_ww2_modules_RoleFirstClassMachinneGunner";
            tooltip = "";
            defaultValue = "true";
            typeName = "BOOL";
        };
        class RoleSniper : Checkbox {
            property = QGVAR(MAWII_ModuleRoleSelector_RoleSnipper);
            displayName = "$STR_MAWII_ww2_modules_RoleSniper";
            tooltip = "";
            defaultValue = "true";
            typeName = "BOOL";
        };
         class RoleAT : Checkbox {
            property = QGVAR(MAWII_ModuleRoleSelector_RoleAT);
            displayName = "$STR_MAWII_ww2_modules_RoleATSpecialist";
            tooltip = "";
            defaultValue = "true";
            typeName = "BOOL";
        };
         class RoleAssaultRifleman : Checkbox {
            property = QGVAR(MAWII_ModuleRoleSelector_RoleAssaultRifleman);
            displayName = "$STR_MAWII_ww2_modules_RoleAssaultRifleman";
            tooltip = "";
            defaultValue = "true";
            typeName = "BOOL";
        };
        class RoleTankCrew : Checkbox {
            property = QGVAR(MAWII_ModuleRoleSelector_RoleTankCrew);
            displayName = "$STR_MAWII_ww2_modules_RoleTankCrew";
            tooltip = "";
            defaultValue = "true";
            typeName = "BOOL";
        };
        class RolePilot : Checkbox {
            property = QGVAR(MAWII_ModuleRoleSelector_RolePilot);
            displayName = "$STR_MAWII_ww2_modules_RolePilot";
            tooltip = "";
            defaultValue = "true";
            typeName = "BOOL";
        };
        class ModuleDescription: ModuleDescription {};
    };

    class ModuleDescription: ModuleDescription {};
};