class CfgVehicles {

	class Item_Base_F;

	class ACE_Actions;
	class ACE_MainActions;

	class LIB_Zis6_Parm; // SOVIET
	class LIB_US_NAC_GMC_Parm;// AMERCIAN AND UK
	class LIB_DAK_OpelBlitz_Parm; // GERMAN
	
	class MAWII_SOV_RADIO_TRUCK : LIB_Zis6_Parm {
		
		author = "Moskito Santana";
		displayName = "$STR_MAWII_ww2_vehicles_ZIS5V";
		
		// ace related variables		
		transportRepair = 0;

		// tfar related variables
		tf_range = 4000;
		tf_hasLRradio = 1;
		TFAR_hasIntercom = 1;
		tf_isolatedAmount = 0.5;

		class ACE_Actions : ACE_Actions {
			class ACE_MainActions : ACE_MainActions {

				class mawii_action_deploy_field_radio_station_action {
					displayName	= "$STR_MAWII_ww2_vehicles_DeployStaticRadio"; //String Text shown to user
					condition = QUOTE(_player getVariable [ARR_2('current_player_description', 'Rifleman')] == 'RTO' &&  {_target getVariable [ARR_2('mawii_static_radio_station_deploy_status', false)] == false } );	//String (of code)	Condition to show the action
					statement = QUOTE([ARR_2(_target,_player)] call FUNC(deployStaticRadioStation));	//String (of code)	Statement run when selected
					icon = "";	//String (file path)	Icon shown (OPTIONAL)
					exceptions = ""; //Array (of strings)	Exceptions to canInteractWith conditions (e.g. "notOnMap") (OPTIONAL)
					insertChildren = ""; //String (of code)	Code to return sub actions (OPTIONAL)
					modifierFunction = ""; //String (of code)	Code to modify this action (OPTIONAL)
					runOnHover	= 0; //Number or String	(1=true) OR Condition code - Will run the statement on hover (OPTIONAL)
					distance = 6; //Number	External Base Actions Only, Max distance player can be from action point
					selection = ""; //String	External Base Actions Only, A memory point for selectionPosition
					doNotCheckLOS = 1;	//Number	(1=true) - Ignores blocked LOS to the interaction node even when beyond 1.2m
				}; // End of class Action Deploy Static Radio Statio

				class mawii_action_undeploy_field_radio_station_action {
					displayName	= "$STR_MAWII_ww2_vehicles_UndeployStaticRadio"; //String	Text shown to user
					condition = QUOTE(_player getVariable [ARR_2('current_player_description', 'Rifleman')] == 'RTO' &&  {_target getVariable [ARR_2('mawii_static_radio_station_deploy_status', false)] == true } );	//String (of code)	Condition to show the action 
					statement = QUOTE([ARR_2(_target,_player)] call FUNC(undeployStaticRadioStation));	//String (of code)	Statement run when selected
				}; // End of class Action Undeploy Static Radio Statio

				class mawii_action_map_nearest_squads_action {
					displayName	= "$STR_MAWII_ww2_vehicles_ScanForSquads"; //String Text shown to user
					condition = QUOTE(_player getVariable [ARR_2('current_player_description', 'Rifleman')] == 'RTO'  &&  {_target getVariable [ARR_2('mawii_static_radio_station_deploy_status', false)] == true} );	//String (of code)	Condition to show the action
					statement = QUOTE([ARR_2(_target,side _player)] call FUNC(mapNearestSquads));	//String (of code)	Statement run when selected
				}; // End of class Action Deploy Static Radio Statio

			}; // End of class Ace Main Actions 
		}; // End of class Ace Actions

        class Attributes {
            class mawii_attr_radio_static_station_deployed {
                displayName = "$STR_MAWII_ww2_vehicles_DeployStatus";
                tooltip = "Assign The Radio Station Status for vehicle";
                property = "RadioIsDeployed";
                control = "CheckBox";
                expression = QUOTE(_this setVariable [ARR_2('mawii_radio_static_station_deployed',_value)]; [ARR_2(_this,_value)] call FUNC(deployStaticRadioOnEden); );
                defaultValue = "false";
                unique = 0;
                //validate = "number";
                //condition = "objectVehicle";
                //typeName = "BOOL";
		    }; // End of radio station deployed attribute
			class mawii_attr_radio_static_station_mapping_range {
                displayName = "$STR_MAWII_ww2_vehicles_SniffingRange";
                tooltip = "Assign The Sniffing Radio Range for vehicle";
                property = "RadioSniffinRange";
                control = "Edit";
                expression = QUOTE(_this setVariable [ARR_2('mawii_radio_static_radio_sniffing_range',_value)] );
                defaultValue = 300;
                unique = 0;
                validate = "number";
                condition = "objectVehicle";
                typeName = "NUMBER";
		    }; // End of mapping range attribute

       }; // End of Atrribute class
	};
	class MAWII_US_RADIO_TRUCK : LIB_US_NAC_GMC_Parm {
		author = "Moskito Santana";
		displayName = "$STR_MAWII_ww2_vehicles_GMC";
		transportRepair = 0;
		tf_range = 4000;
		TFAR_hasIntercom = 0;
		tf_hasLRradio = 1;
		tf_isolatedAmount = 0.5;

		class ACE_Actions : ACE_Actions {
			class ACE_MainActions : ACE_MainActions {
				class mawii_action_deploy_field_radio_station_action {
					displayName	= "$STR_MAWII_ww2_vehicles_DeployStaticRadio"; //String Text shown to user
					condition = QUOTE(_player getVariable [ARR_2('current_player_description', 'Rifleman')] == 'RTO' &&  {_target getVariable [ARR_2('mawii_static_radio_station_deploy_status', false)] == false } );	//String (of code)	Condition to show the action
					statement = QUOTE([ARR_2(_target,_player)] call FUNC(deployStaticRadioStation));	//String (of code)	Statement run when selected
					icon = "";	//String (file path)	Icon shown (OPTIONAL)
					exceptions = ""; //Array (of strings)	Exceptions to canInteractWith conditions (e.g. "notOnMap") (OPTIONAL)
					insertChildren = ""; //String (of code)	Code to return sub actions (OPTIONAL)
					modifierFunction = ""; //String (of code)	Code to modify this action (OPTIONAL)
					runOnHover	= 0; //Number or String	(1=true) OR Condition code - Will run the statement on hover (OPTIONAL)
					distance = 6; //Number	External Base Actions Only, Max distance player can be from action point
					selection = ""; //String	External Base Actions Only, A memory point for selectionPosition
					doNotCheckLOS = 1;	//Number	(1=true) - Ignores blocked LOS to the interaction node even when beyond 1.2m
				}; // End of class Action Deploy Static Radio Statio

				class mawii_action_undeploy_field_radio_station_action {
					displayName	= "$STR_MAWII_ww2_vehicles_UndeployStaticRadio"; //String	Text shown to user
					condition = QUOTE(_player getVariable [ARR_2('current_player_description', 'Rifleman')] == 'RTO' &&  {_target getVariable [ARR_2('mawii_static_radio_station_deploy_status', false)] == true } );	//String (of code)	Condition to show the action 
					statement = QUOTE([ARR_2(_target,_player)] call FUNC(undeployStaticRadioStation));	//String (of code)	Statement run when selected
				}; // End of class Action Undeploy Static Radio Statio

				class mawii_action_map_nearest_squads_action {
					displayName	= "$STR_MAWII_ww2_vehicles_ScanForSquads"; //String Text shown to user
					condition = QUOTE(_player getVariable [ARR_2('current_player_description', 'Rifleman')] == 'RTO'  &&  {_target getVariable [ARR_2('mawii_static_radio_station_deploy_status', false)] == true} );	//String (of code)	Condition to show the action
					statement = QUOTE([ARR_2(_target,side _player)] call FUNC(mapNearestSquads));	//String (of code)	Statement run when selected
				}; // End of class Action Deploy Static Radio Statio

			}; // End of class Ace Main Actions 
		}; // End of class Ace Actions

        class Attributes {
            class mawii_attr_radio_static_station_deployed {
                displayName = "$STR_MAWII_ww2_vehicles_DeployStatus";
                tooltip = "Assign The Radio Station Status for vehicle";
                property = "RadioIsDeployed";
                control = "CheckBox";
                expression = QUOTE(_this setVariable [ARR_2('mawii_radio_static_station_deployed',_value)]; [ARR_2(_this,_value)] call FUNC(deployStaticRadioOnEden); );
                defaultValue = "false";
                unique = 0;
                //validate = "number";
                //condition = "objectVehicle";
                //typeName = "BOOL";
		    }; // End of radio station deployed attribute
			class mawii_attr_radio_static_station_mapping_range {
                displayName = "$STR_MAWII_ww2_vehicles_SniffingRange";
                tooltip = "Assign The Sniffing Radio Range for vehicle";
                property = "RadioSniffinRange";
                control = "Edit";
                expression = QUOTE(_this setVariable [ARR_2('mawii_radio_static_radio_sniffing_range',_value)] );
                defaultValue = 300;
                unique = 0;
                validate = "number";
                condition = "objectVehicle";
                typeName = "NUMBER";
		    }; // End of mapping range attribute

       }; // End of Atrribute class
	};
	class MAWII_GER_RADIO_TRUCK : LIB_DAK_OpelBlitz_Parm {
		author = "Moskito Santana";
		displayName = "$STR_MAWII_ww2_vehicles_OpelBlitz";
		tf_range = 4000;
		TFAR_hasIntercom = 1;
		tf_hasLRradio = 1;
		tf_isolatedAmount = 0.5;
		transportRepair = 0;

		class ACE_Actions : ACE_Actions {
			class ACE_MainActions : ACE_MainActions {

				class mawii_action_deploy_field_radio_station_action {
					displayName	= "$STR_MAWII_ww2_vehicles_DeployStaticRadio"; //String Text shown to user
					condition = QUOTE(_player getVariable [ARR_2('current_player_description', 'Rifleman')] == 'RTO' &&  {_target getVariable [ARR_2('mawii_static_radio_station_deploy_status', false)] == false } );	//String (of code)	Condition to show the action
					statement = QUOTE([ARR_2(_target,_player)] call FUNC(deployStaticRadioStation));	//String (of code)	Statement run when selected
					icon = "";	//String (file path)	Icon shown (OPTIONAL)
					exceptions = ""; //Array (of strings)	Exceptions to canInteractWith conditions (e.g. "notOnMap") (OPTIONAL)
					insertChildren = ""; //String (of code)	Code to return sub actions (OPTIONAL)
					modifierFunction = ""; //String (of code)	Code to modify this action (OPTIONAL)
					runOnHover	= 0; //Number or String	(1=true) OR Condition code - Will run the statement on hover (OPTIONAL)
					distance = 6; //Number	External Base Actions Only, Max distance player can be from action point
					selection = ""; //String	External Base Actions Only, A memory point for selectionPosition
					doNotCheckLOS = 1;	//Number	(1=true) - Ignores blocked LOS to the interaction node even when beyond 1.2m
				}; // End of class Action Deploy Static Radio Statio

				class mawii_action_undeploy_field_radio_station_action {
					displayName	= "$STR_MAWII_ww2_vehicles_UndeployStaticRadio"; //String	Text shown to user
					condition = QUOTE(_player getVariable [ARR_2('current_player_description', 'Rifleman')] == 'RTO' &&  {_target getVariable [ARR_2('mawii_static_radio_station_deploy_status', false)] == true } );	//String (of code)	Condition to show the action 
					statement = QUOTE([ARR_2(_target,_player)] call FUNC(undeployStaticRadioStation));	//String (of code)	Statement run when selected
				}; // End of class Action Undeploy Static Radio Statio

				class mawii_action_map_nearest_squads_action {
					displayName	= "$STR_MAWII_ww2_vehicles_ScanForSquads"; //String Text shown to user
					condition = QUOTE(_player getVariable [ARR_2('current_player_description', 'Rifleman')] == 'RTO'  &&  {_target getVariable [ARR_2('mawii_static_radio_station_deploy_status', false)] == true} );	//String (of code)	Condition to show the action
					statement = QUOTE([ARR_2(_target,side _player)] call FUNC(mapNearestSquads));	//String (of code)	Statement run when selected
				}; // End of class Action Deploy Static Radio Statio

			}; // End of class Ace Main Actions 
		}; // End of class Ace Actions

        class Attributes {
            class mawii_attr_radio_static_station_deployed {
                displayName = "$STR_MAWII_ww2_vehicles_DeployStatus";
                tooltip = "Assign The Radio Station Status for vehicle";
                property = "RadioIsDeployed";
                control = "CheckBox";
                expression = QUOTE(_this setVariable [ARR_2('mawii_radio_static_station_deployed',_value)]; [ARR_2(_this,_value)] call FUNC(deployStaticRadioOnEden); );
                defaultValue = "false";
                unique = 0;
                //validate = "number";
                //condition = "objectVehicle";
                //typeName = "BOOL";
		    }; // End of radio station deployed attribute
			class mawii_attr_radio_static_station_mapping_range {
                displayName = "$STR_MAWII_ww2_vehicles_SniffingRange";
                tooltip = "Assign The Sniffing Radio Range for vehicle";
                property = "RadioSniffinRange";
                control = "Edit";
                expression = QUOTE(_this setVariable [ARR_2('mawii_radio_static_radio_sniffing_range',_value)] );
                defaultValue = 300;
                unique = 0;
                validate = "number";
                condition = "objectVehicle";
                typeName = "NUMBER";
		    }; // End of mapping range attribute

       }; // End of Atrribute class
	};
};