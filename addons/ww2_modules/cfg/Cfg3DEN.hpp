#include "\k\mawii\addons\ww2_modules\functions\script_component.hpp"

class Cfg3DEN {
    class Object {
        class AttributeCategories {
            class current_role_description {
                displayName = "$STR_MAWII_ww2_modules_MawiiRoleSelectionAttrSectionClassDisplayName";
                collapsed = 0;
                class Attributes {
                    class CustomRole {
                        displayName = "$STR_MAWII_ww2_modules_ClassAttributeSetRole";
                        tooltip = "Assign Custom Role To the Unit";
                        property = "PlayerRoleSelection";
                        control = "Combo";
                        expression = "_this setVariable [ 'current_player_description', _value, true]; systemChat format ['%1 role is %2 stored in variable %3', _this, _value, 'current_player_description'];";
                        defaultValue = "$STR_MAWII_ww2_modules_RoleRifleman";
                        unique = 0;
                        validate = "none";
                        condition = "objectControllable";
                        typeName = "STRING";
                       	class Values {
                            class C_ASSAULT_RIFFLEMAN {
                                name = "$STR_MAWII_ww2_modules_RoleAssaultRifleman";
                                value = "$STR_MAWII_ww2_modules_RoleAssaultRifleman";
                            };
                            class C_AT {
                                name = "$STR_MAWII_ww2_modules_RoleATSpecialist";
                                value = "$STR_MAWII_ww2_modules_RoleATSpecialist";
                            };
                            class C_FIRST_CLASS_MACHINNE_GUNNER {
                                name = "$STR_MAWII_ww2_modules_RoleFirstClassMachinneGunner";
                                value = "$STR_MAWII_ww2_modules_RoleFirstClassMachinneGunner";
                            };
                            class C_MACHINNE_GUNNER {
                                name = "$STR_MAWII_ww2_modules_RoleMachineGunner";
                                value = "$STR_MAWII_ww2_modules_RoleMachineGunner";
                            };
                            class C_PILOT {
                                name = "$STR_MAWII_ww2_modules_RolePilot";
                                value = "$STR_MAWII_ww2_modules_RolePilot";
                            };
                            class C_RIFLEMAN {
                                name = "$STR_MAWII_ww2_modules_RoleRifleman";
                                value = "$STR_MAWII_ww2_modules_RoleRifleman";
                            };
                            class C_SAPPER {
                                name = "$STR_MAWII_ww2_modules_RoleSapper";
                                value = "$STR_MAWII_ww2_modules_RoleSapper";
                            };
                            class C_SNIPER {
                                name = "$STR_MAWII_ww2_modules_RoleSniper";
                                value = "$STR_MAWII_ww2_modules_RoleSniper";
                            };
                            class C_SQUAD_LEADER {
                                name = "$STR_MAWII_ww2_modules_RoleSquadLeader";
                                value = "$STR_MAWII_ww2_modules_RoleSquadLeader";
                            };
                            class C_TANK_CREW {
                                name = "$STR_MAWII_ww2_modules_RoleTankCrew";
                                value = ROLE_TANK_CREW;
                            };
                            class C_RTO {
                                name = "$STR_MAWII_ww2_modules_RoleRTO";
                                value = "$STR_MAWII_ww2_modules_RoleTankCrew";
                            };
                            class C_MEDIC {
                                name = "$STR_MAWII_ww2_modules_RoleMedic";
                                value = "$STR_MAWII_ww2_modules_RoleMedic";
                            };

                        }; 
                    };
                };
            };
       };
    };
};