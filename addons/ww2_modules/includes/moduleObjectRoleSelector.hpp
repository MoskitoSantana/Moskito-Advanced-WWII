class MAWII_ModuleRoleSelector : MAWII_BaseModule {
    scope = 2;
    displayName = "Object Role Selector";
    icon = "\~MAINPREFIX~\~PREFIX~\addons\ww2_modules\data\role_setup_variant_2.paa";
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
            displayName = "Pick Faction";
            tooltip = "Selecciona una faccion para los equipamientos";
            typeName = "NUMBER";
            defaultValue = 0x771;
    
            class Values {
            	class UK { name = "United Kingdom";	value = 0x770; };
            	class USA { name = "USA";	value = 0x771; }; 
            	class GER { name = "Germany";	value = 0x772; };
            	class SOV { name = "Soviets";	value = 0x773; };
            };

        };

        class OnStart : Checkbox {
            property = QGVAR(MAWII_ModuleRoleSelector_OnStart);
            displayName = "On Mission Start";
            tooltip = "";
            defaultValue = "true";
            typeName = "BOOL";
        };

        class RoleRTO : Checkbox {
            property = QGVAR(MAWII_ModuleRoleSelector_RoleRTO);
            displayName = "RTO";
            tooltip = "";
            defaultValue = "true";
            typeName = "BOOL";
        };

        class RoleMedic : Checkbox {
            property = QGVAR(MAWII_ModuleRoleSelector_RoleMedic);
            displayName = "Medic";
            tooltip = "";
            defaultValue = "true";
            typeName = "BOOL";
        };
        class RoleSapper : Checkbox {
            property = QGVAR(MAWII_ModuleRoleSelector_RoleSapper);
            displayName = "Sapper";
            tooltip = "";
            defaultValue = "true";
            typeName = "BOOL";
        };
        class RoleSquadLeader : Checkbox {
            property = QGVAR(MAWII_ModuleRoleSelector_RoleSquadLeader);
            displayName = "Squad Leader";
            tooltip = "";
            defaultValue = "true";
            typeName = "BOOL";
            
        };
        class RoleRifleman : Checkbox {
            property = QGVAR(MAWII_ModuleRoleSelector_RoleRifleman);
            displayName = "Rifleman";
            tooltip = "";
            defaultValue = "true";
            typeName = "BOOL";
        };
        class RoleMachinneGunner : Checkbox {
            property = QGVAR(MAWII_ModuleRoleSelector_RoleMachinneGunner);
            displayName = "Machinne Gunner";
            tooltip = "";
            defaultValue = "true";
            typeName = "BOOL";
        };
        class RoleFirstClassMachinneGunner : Checkbox {
            property = QGVAR(MAWII_ModuleRoleSelector_RoleFirstClassMachinneGunner);
            displayName = "First Class Machinne Gunner";
            tooltip = "";
            defaultValue = "true";
            typeName = "BOOL";
        };
        class RoleSniper : Checkbox {
            property = QGVAR(MAWII_ModuleRoleSelector_RoleSnipper);
            displayName = "Sniper";
            tooltip = "";
            defaultValue = "true";
            typeName = "BOOL";
        };
         class RoleAT : Checkbox {
            property = QGVAR(MAWII_ModuleRoleSelector_RoleAT);
            displayName = "AT Specialist";
            tooltip = "";
            defaultValue = "true";
            typeName = "BOOL";
        };
         class RoleAssaultRifleman : Checkbox {
            property = QGVAR(MAWII_ModuleRoleSelector_RoleAssaultRifleman);
            displayName = "Assault Rifleman";
            tooltip = "";
            defaultValue = "true";
            typeName = "BOOL";
        };
        class ModuleDescription: ModuleDescription {};
    };

    class ModuleDescription: ModuleDescription {};
};