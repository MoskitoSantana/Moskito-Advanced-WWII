#include "\~MAINPREFIX~\~PREFIX~\addons\ww2_modules\functions\script_component.hpp"

class Cfg3DEN {
    class Object {
        class AttributeCategories {
            class current_role_description {
                displayName = "MAWII Role Selection";
                collapsed = 0;
                class Attributes {
                    class CustomRole {
                        displayName = "Set Custom Role";
                        tooltip = "Assign Custom Role To the Unit";
                        property = "PlayerRoleSelection";
                        control = "Combo";
                        expression = "_this setVariable [ 'current_player_description', _value, true]; systemChat format ['%1 role is %2 stored in variable %3', _this, _value, 'current_player_description'];";
                        defaultValue = ROLE_RIFLEMAN;
                        unique = 0;
                        validate = "variable";
                        condition = "objectControllable";
                        typeName = "STRING";
                       	class Values {
                            class C_ASSAULT_RIFFLEMAN {
                                name = DISPLAY_ROLE_NAME_ASSAULT_RIFLEMAN;
                                value = ROLE_ASSAULT_RIFLEMAN;
                            };
                            class C_AT {
                                name = DISPLAY_ROLE_NAME_AT_SPECIALIST;
                                value = ROLE_AT_SPECIALIST;
                            };
                            class C_FIRST_CLASS_MACHINNE_GUNNER {
                                name = DISPLAY_ROLE_NAME_FIRST_CLASS_MACHINNE_GUNNER;
                                value = ROLE_FIRST_CLASS_MACHINNE_GUNNER;
                            };
                            class C_MACHINNE_GUNNER {
                                name = DISPLAY_ROLE_NAME_MACHINNE_GUNNER;
                                value = ROLE_MACHINNE_GUNNER;
                            };
                            class C_PILOT {
                                name = DISPLAY_ROLE_NAME_PILOT;
                                value = ROLE_PILOT;
                            };
                            class C_RIFLEMAN {
                                name = DISPLAY_ROLE_NAME_RIFLEMAN;
                                value = ROLE_RIFLEMAN;
                            };
                            class C_SAPPER {
                                name = DISPLAY_ROLE_NAME_SAPPER;
                                value = ROLE_SAPPER;
                            };
                            class C_SNIPER {
                                name = DISPLAY_ROLE_NAME_SNIPPER;
                                value = ROLE_SNIPPER;
                            };
                            class C_SQUAD_LEADER {
                                name = DISPLAY_ROLE_NAME_SQUAD_LEADER;
                                value = ROLE_SQUAD_LEADER;
                            };
                            class C_TANK_CREW {
                                name = DISPLAY_ROLE_NAME_TANK_CREW;
                                value = ROLE_TANK_CREW;
                            };
                            class C_RTO {
                                name = DISPLAY_ROLE_NAME_RTO;
                                value = ROLE_RTO;
                            };
                            class C_MEDIC {
                                name = DISPLAY_ROLE_NAME_MEDIC;
                                value = ROLE_MEDIC;
                            };

                        }; 
                    };
                };
            };
       };
    };
};