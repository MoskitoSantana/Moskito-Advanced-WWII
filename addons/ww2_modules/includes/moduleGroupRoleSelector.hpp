class MAWII_ModuleRoleSelectorForGroups : MAWII_BaseModule {
    scope = 2;
    displayName = "Group Role Selector";
    icon = "\z\mawii\addons\ww2_modules\data\role_setup_variant_2.paa";
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
            displayName = "Pick Faction";
            tooltip = "Selecciona una faccion para los equipamientos";
            typeName = "NUMBER";
            defaultValue = 0x771;
    
            class Values {
            	class UK	{ name = "United Kingdom";	value = 0x770; };
            	class USA	{ name = "USA";	value = 0x771; }; 
            	class GER	{ name = "Germany";	value = 0x772; };
            	class SOV	{ name = "Soviets";	value = 0x773; };
            };

        };

        class ModuleDescription: ModuleDescription {};
    };

    class ModuleDescription: ModuleDescription {};
};