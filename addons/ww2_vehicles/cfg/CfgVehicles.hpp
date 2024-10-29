class CfgVehicles {
	
	class LIB_Zis6_Parm; // SOVIET
	class LIB_US_NAC_GMC_Parm;// AMERCIAN AND UK
	class LIB_DAK_OpelBlitz_Parm; // GERMAN
	
	class MAWII_SOV_RADIO_TRUCK : LIB_Zis6_Parm {
		
		author = "Moskito Santana";
		displayName = "ZIS-5V (Radio)";
		
		// ace related variables		
		transportRepair = 0;

		// tfar related variables
		tf_range = 4000;
		tf_hasLRradio = 1;
		TFAR_hasIntercom = 0;
		tf_isolatedAmount = 0.5;

		// mawii related variables
		mawii_maping_range = 300; // max range of view intel
		mawii_maping_range_max = 500; // max range of view intel
		mawii_radio_cargo = 20; // ammount of deployable radios
		mawii_radio_cargo_max = 50; // max amount of deployable radios

		mawii_static_radio_station_deploy_status = 0;
		mawii_static_radio_station_squads_mapped[] = {};

		class ACE_Actions{
			class ACE_MainActions {
				condition = "true";
				displayName = "Interactions";
				position = "call ace_interaction_fnc_getVehiclePos";
				distance = 6;

				class class_mawii_deploy_field_radio_station_action {
					displayName	= "Deploy Static Radio Station"; //String	Text shown to user
					condition = "true";	//String (of code)	Condition to show the action
					statement = QUOTE([ARR_2(_target,_player)] call FUNC(deployStaticRadioStation));	//String (of code)	Statement run when selected
					icon = "";	//String (file path)	Icon shown (OPTIONAL)
					exceptions = ""; //Array (of strings)	Exceptions to canInteractWith conditions (e.g. "notOnMap") (OPTIONAL)
					insertChildren = ""; //String (of code)	Code to return sub actions (OPTIONAL)
					modifierFunction = ""; //String (of code)	Code to modify this action (OPTIONAL)
					runOnHover	= 0; //Number or String	(1=true) OR Condition code - Will run the statement on hover (OPTIONAL)
					distance = 6; //Number	External Base Actions Only, Max distance player can be from action point
					selection = ""; //String	External Base Actions Only, A memory point for selectionPosition
					doNotCheckLOS = 1;	//Number	(1=true) - Ignores blocked LOS to the interaction node even when beyond 1.2m
					//showDisabled = 0;	//Number	Currently has no effect
					//enableInside = 0;	//Number	Currently has no effect
					//canCollapse	= 0; //Number	Currently has no effect
				};

				class class_mawii_undeploy_field_radio_station_action {};
			};
		};


	};
	
	class MAWII_US_RADIO_TRUCK : LIB_US_NAC_GMC_Parm {
		author = "Moskito Santana";
		displayName = "GMC Truck (Radio)";
		transportRepair = 0;
		tf_range = 4000;
		TFAR_hasIntercom = 0;
		tf_hasLRradio = 1;
		tf_isolatedAmount = 0.5;
	};
	class MAWII_GER_RADIO_TRUCK : LIB_DAK_OpelBlitz_Parm {
		author = "Moskito Santana";
		displayName = "Opel Blitz (Radio)";
		tf_range = 4000;
		TFAR_hasIntercom = 1;
		tf_hasLRradio = 1;
		tf_isolatedAmount = 0.5;
		transportRepair = 0;
	};
	
};