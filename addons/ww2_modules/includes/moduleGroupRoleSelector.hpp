class MAWII_ModuleRoleSelectorForGroups : MAWII_BaseModule {
    scope = 2;
    displayName = "$STR_MAWII_ww2_modules_GroupRoleSelectorClassDisplayName";
    icon = "\k\mawii\addons\ww2_modules\data\group_role_setup.paa";
    category = "MAWII";

    function = QFUNC(moduleGroupRoleSelector);
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
            property = "MAWII_ModuleGroupRoleSetUp_Role";
            displayName = "$STR_MAWII_ww2_modules_ClassAttributePickFaction";
            tooltip = "Selecciona una faccion para los equipamientos";
            typeName = "NUMBER";
            defaultValue = 0x771;
    
            class Values {
            	class UK	{ name = "$STR_MAWII_ww2_modules_FactionUK";	value = 0x770; };
            	class USA	{ name = "$STR_MAWII_ww2_modules_FactionUSA";	value = 0x771; }; 
            	class GER	{ name = "$STR_MAWII_ww2_modules_FactionGermany";	value = 0x772; };
            	class SOV	{ name = "$STR_MAWII_ww2_modules_FactionSoviets";	value = 0x773; };
            };

        };

        class ModuleDescription: ModuleDescription {};
    };

    class ModuleDescription: ModuleDescription {};
};