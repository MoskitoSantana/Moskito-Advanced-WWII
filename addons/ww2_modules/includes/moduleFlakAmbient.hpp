class MAWII_ModuleFakAmbient : MAWII_BaseModule {
    scope = 2;
    displayName = "Flak Ambient";
    icon = "\~MAINPREFIX~\~PREFIX~\addons\ww2_modules\data\role_setup_variant_2.paa";
    category = "MAWII";

    function = QFUNC(moduleFlakAmbient);
    functionPriority = 1;
    isGlobal = 2;
    isTriggerActivated = 0;
    isDisposable = 0;
    is3DEN = 1;

    canSetArea = 1;
    canSetAreaShape = 1;
    canSetAreaHeight = 0;
    
    class AttributeValues {
        size3[] = { 100, 100, -1 };
        isRectangle = 0;
    };

     class Attributes: AttributesBase {
        class NumberOfPositions : Edit {
            property = "MAWII_ModuleFlakAmbient_NumberOfPositions";
            displayName = "Number of Positions";
            tooltip = "Number of positions to spawn flak artillery";
            typeName = "NUMBER";
            defaultValue = "10";
        };
        class ModuleDescription: ModuleDescription {};
    };

    class ModuleDescription: ModuleDescription {};
};