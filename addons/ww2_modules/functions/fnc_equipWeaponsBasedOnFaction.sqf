#include "script_component.hpp"

params ["_unit", ["_faction", WEAPON_FACTION_USA]];

if (isNil "_unit") exitWith {};

switch (_faction) do {
	case WEAPON_FACTION_USA : {
		switch ( (_unit getVariable ["current_player_description", roleDescription _unit]) ) do {
			case (localize "STR_MAWII_ww2_modules_RoleRTO") : {
				_unit addWeapon "LIB_Binocular_US";
				_mainWeapon = (selectRandom [ARR_2(US_MAIN_WEAPON_M1_CARABINE,US_MAIN_WEAPON_M1_GARAND)]); 
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,_mainWeapon);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,FLARE_GUN);
				ADD_MAGAZINE_CARGO_ON_BACKPACK(_unit,"lib_1Rnd_flare_red",2,1);
				ADD_MAGAZINE_CARGO_ON_BACKPACK(_unit,"lib_1Rnd_flare_green",2,1);
				ADD_MAGAZINE_CARGO_ON_BACKPACK(_unit,"lib_1Rnd_flare_yellow",2,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18_Red",2,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18_Green",2,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18_Yellow",2,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleMedic") : {
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_MAIN_WEAPON_M1_GARAND);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_SECONDARY_WEAPON_COLT);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",3,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleSapper") : {
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_MAIN_WEAPON_M3);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_SECONDARY_WEAPON_COLT);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_Mk_2",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",1,1);
				ADD_SAPPER_TOOLS(_unit);
			};
			case (localize "STR_MAWII_ww2_modules_RoleRifleman") : {
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_MAIN_WEAPON_M1_GARAND);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_SECONDARY_WEAPON_COLT);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_Mk_2",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",1,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleSquadLeader") : {
				_unit addWeapon "LIB_Binocular_US";
				_mainWeapon = (selectRandom [ARR_3(US_MAIN_WEAPON_M1_CARABINE,US_MAIN_WEAPON_M1_GARAND,US_MAIN_WEAPON_THOMPSON)]); 
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,_mainWeapon);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_SECONDARY_WEAPON_COLT);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_Mk_2",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",1,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleMachineGunner") : {
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_MAIN_WEAPON_PORTABLE_BROWNING);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_SECONDARY_WEAPON_COLT);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_Mk_2",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",1,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleFirstClassMachinneGunner") : {
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_MAIN_WEAPON_BAR);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_SECONDARY_WEAPON_COLT);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_Mk_2",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",1,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleAssaultRifleman") : {
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_MAIN_WEAPON_THOMPSON);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_SECONDARY_WEAPON_COLT);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_Mk_2",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",1,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleSniper") : {
				_unit addWeapon "LIB_Binocular_US";
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_MAIN_WEAPON_SPRINGFIELD);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_SECONDARY_WEAPON_COLT);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_Mk_2",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",2,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleATSpecialist") : {
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_MAIN_WEAPON_M1_GARAND);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_SECONDARY_WEAPON_COLT);
				ADD_WEAPON_AND_MAGAZINES_ON_BACKPACK(_unit,US_THIRD_WEAPON_LAUNCHER);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_Mk_2",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",1,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleTankCrew") : {
				_unit addWeapon "LIB_Binocular_US";
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_MAIN_WEAPON_M3);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_SECONDARY_WEAPON_COLT);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",2,1);
			};
			case (localize "STR_MAWII_ww2_modules_RolePilot") : {
				_unit addWeapon "LIB_Binocular_US";
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_SECONDARY_WEAPON_COLT);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",2,1);
			};
			default  {
				systemChat (localize "STR_MAWII_WW2_Modules_TankCrew");
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_MAIN_WEAPON_M1_GARAND);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_SECONDARY_WEAPON_COLT);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_Mk_2",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",1,1);
			};
		};
	};
	case WEAPON_FACTION_UK : {
		switch ( (_unit getVariable ["current_player_description", roleDescription _unit]) ) do {
			case (localize "STR_MAWII_ww2_modules_RoleRTO") : {
				_unit addWeapon "LIB_Binocular_UK";
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,UK_MAIN_WEAPON_ENFIELD);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,FLARE_GUN);
				ADD_MAGAZINE_CARGO_ON_BACKPACK(_unit,"lib_1Rnd_flare_red",2,1);
				ADD_MAGAZINE_CARGO_ON_BACKPACK(_unit,"lib_1Rnd_flare_green",2,1);
				ADD_MAGAZINE_CARGO_ON_BACKPACK(_unit,"lib_1Rnd_flare_yellow",2,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18_Red",2,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18_Green",2,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18_Yellow",2,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleMedic") : {
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,UK_MAIN_WEAPON_ENFIELD);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_SECONDARY_WEAPON_COLT);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",3,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleSapper") : {
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,UK_MAIN_WEAPON_STEN);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_SECONDARY_WEAPON_COLT);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_Mk_2",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",1,1);
				ADD_SAPPER_TOOLS(_unit);
			};
			case (localize "STR_MAWII_ww2_modules_RoleRifleman") : {
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,UK_MAIN_WEAPON_ENFIELD);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_SECONDARY_WEAPON_COLT);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_Mk_2",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",1,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleSquadLeader") : {
				_mainWeapon = (selectRandom [ARR_2(UK_MAIN_WEAPON_STEN,UK_MAIN_WEAPON_ENFIELD)]);
				_unit addWeapon "LIB_Binocular_UK";
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,_mainWeapon);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_SECONDARY_WEAPON_COLT);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_Mk_2",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",1,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleMachineGunner") : {
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,UK_MAIN_WEAPON_BREN);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_SECONDARY_WEAPON_COLT);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_Mk_2",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",1,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleFirstClassMachinneGunner") : {
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_MAIN_WEAPON_BAR);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_SECONDARY_WEAPON_COLT);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_Mk_2",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",1,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleAssaultRifleman") : {
				_mainWeapon = (selectRandom [ARR_2(UK_MAIN_WEAPON_STEN,US_MAIN_WEAPON_THOMPSON)]);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,_mainWeapon); 
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_SECONDARY_WEAPON_COLT);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_Mk_2",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",1,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleSniper") : {
				_unit addWeapon "LIB_Binocular_UK";
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,UK_MAIN_WEAPON_ENFIELD_OPTIC);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_SECONDARY_WEAPON_COLT);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_Mk_2",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",2,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleATSpecialist") : {
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,UK_MAIN_WEAPON_ENFIELD);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_SECONDARY_WEAPON_COLT);
				ADD_WEAPON_AND_MAGAZINES_ON_BACKPACK(_unit,US_THIRD_WEAPON_LAUNCHER);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_Mk_2",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",1,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleTankCrew") : {
				_unit addWeapon "LIB_Binocular_UK";
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,UK_MAIN_WEAPON_STEN);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_SECONDARY_WEAPON_COLT);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",2,1);
			};
			case (localize "STR_MAWII_ww2_modules_RolePilot") : {
				_unit addWeapon "LIB_Binocular_UK";
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_SECONDARY_WEAPON_COLT);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",2,1);
			};
			default  {
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,UK_MAIN_WEAPON_ENFIELD);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,US_SECONDARY_WEAPON_COLT);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_Mk_2",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",1,1);
			};
		};
	};
	case WEAPON_FACTION_GER : {
		switch ( (_unit getVariable ["current_player_description", roleDescription _unit]) ) do {
			case (localize "STR_MAWII_ww2_modules_RoleRTO") : {
				_unit addWeapon "LIB_Binocular_GER";
				_mainWeapon = (selectRandom [ARR_3(GER_MAIN_WEAPON_G43,GER_MAIN_WEAPON_K98,GER_MAIN_WEAPON_MP40)]); 
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,_mainWeapon);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,FLARE_GUN);
				ADD_MAGAZINE_CARGO_ON_BACKPACK(_unit,"lib_1Rnd_flare_red",2,1);
				ADD_MAGAZINE_CARGO_ON_BACKPACK(_unit,"lib_1Rnd_flare_green",2,1);
				ADD_MAGAZINE_CARGO_ON_BACKPACK(_unit,"lib_1Rnd_flare_yellow",2,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18_Red",2,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18_Green",2,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18_Yellow",2,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_NB39",4,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleMedic") : {
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,GER_MAIN_WEAPON_K98);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,GER_GUN_WEAPON_P38);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_NB39",3,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleSapper") : {
				_mainWeapon = (selectRandom [ARR_3(GER_MAIN_WEAPON_G43,GER_MAIN_WEAPON_K98,GER_MAIN_WEAPON_MP40)]); 
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,_mainWeapon);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,GER_GUN_WEAPON_P38);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_Shg24",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_NB39",1,1);
				ADD_SAPPER_TOOLS(_unit);
			};
			case (localize "STR_MAWII_ww2_modules_RoleRifleman") : {
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,GER_MAIN_WEAPON_K98);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,GER_GUN_WEAPON_P38);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_Shg24",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_NB39",1,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleSquadLeader") : {
				_unit addWeapon "LIB_Binocular_GER";
				_mainWeapon = (selectRandom [ARR_3(GER_MAIN_WEAPON_G43,GER_MAIN_WEAPON_MP44,GER_MAIN_WEAPON_MP40)]); 
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,_mainWeapon);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,GER_GUN_WEAPON_P08);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_Shg24",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_NB39",1,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleMachineGunner") : {
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,GER_MAIN_WEAPON_MG42);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,GER_GUN_WEAPON_P38);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_Shg24",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_NB39",1,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleFirstClassMachinneGunner") : {
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,GER_MAIN_WEAPON_FG42);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,GER_GUN_WEAPON_P38);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_Shg24",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_NB39",1,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleAssaultRifleman") : {
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,GER_MAIN_WEAPON_MP40);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,GER_GUN_WEAPON_P38);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_Shg24",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_NB39",1,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleSniper") : {
				_unit addWeapon "LIB_Binocular_GER";
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,GER_MAIN_WEAPON_K98Z);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,GER_GUN_WEAPON_P38);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_Shg24",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_NB39",2,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleATSpecialist") : {
				_mainWeapon = (selectRandom [ARR_2(GER_MAIN_WEAPON_G43,GER_MAIN_WEAPON_K98)]); 
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,_mainWeapon);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,GER_GUN_WEAPON_P38);
				ADD_WEAPON_AND_MAGAZINES_ON_BACKPACK(_unit,GER_LAUNCHER_WEAPON_RPBZ);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_Shg24",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_NB39",1,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleTankCrew") : {
				_unit addWeapon "LIB_Binocular_GER";
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,GER_MAIN_WEAPON_MP40);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,GER_GUN_WEAPON_P08);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_NB39",2,1);
			};
			case (localize "STR_MAWII_ww2_modules_RolePilot") : {
				_unit addWeapon "LIB_Binocular_GER";
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,GER_GUN_WEAPON_P08);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_NB39",2,1);
			};			
			default  {
				_mainWeapon = (selectRandom [ARR_3(GER_MAIN_WEAPON_G43,GER_MAIN_WEAPON_K98,GER_MAIN_WEAPON_MP40)]); 
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,_mainWeapon);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,GER_LAUNCHER_WEAPON_PZFAUST);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_Shg24",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_NB39",1,1);
			};
		};
	};
	case WEAPON_FACTION_SOV : {
		switch ( (_unit getVariable ["current_player_description", roleDescription _unit]) ) do {
			case (localize "STR_MAWII_ww2_modules_RoleRTO") : {
				_unit addWeapon "LIB_Binocular_SU";
				_mainWeapon = (selectRandom [ARR_2(SOV_MAIN_WEAPON_SVT40,SOV_MAIN_WEAPON_M9130)]);  
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,_mainWeapon);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,FLARE_GUN);
				ADD_MAGAZINE_CARGO_ON_BACKPACK(_unit,"lib_1Rnd_flare_red",2,1);
				ADD_MAGAZINE_CARGO_ON_BACKPACK(_unit,"lib_1Rnd_flare_green",2,1);
				ADD_MAGAZINE_CARGO_ON_BACKPACK(_unit,"lib_1Rnd_flare_yellow",2,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18_Red",2,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18_Green",2,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18_Yellow",2,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleMedic") : {
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,SOV_MAIN_WEAPON_M9130);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,SOV_GUN_WEAPON_T33);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",3,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleSapper") : {
				_mainWeapon = (selectRandom [ARR_2(SOV_MAIN_WEAPON_SVT40,SOV_MAIN_WEAPON_M9130)]);  
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,_mainWeapon);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,SOV_GUN_WEAPON_T33);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_Mk_2",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",1,1);
				ADD_SAPPER_TOOLS(_unit);
			};
			case (localize "STR_MAWII_ww2_modules_RoleRifleman") : {
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,SOV_MAIN_WEAPON_M9130);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,SOV_GUN_WEAPON_M1895);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_Mk_2",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",1,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleSquadLeader") : {
				_unit addWeapon "LIB_Binocular_SU";
				_mainWeapon = (selectRandom [ARR_3(SOV_MAIN_WEAPON_SVT40,SOV_MAIN_WEAPON_M9130,SOV_MAIN_WEAPON_PPSH_M)]);  
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,_mainWeapon);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,SOV_GUN_WEAPON_M1895);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_Mk_2",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",1,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleMachineGunner") : {
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,SOV_MAIN_WEAPON_DT);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,SOV_GUN_WEAPON_T33);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_Mk_2",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",1,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleFirstClassMachinneGunner") : {
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,SOV_MAIN_WEAPON_PPSH_D);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,SOV_GUN_WEAPON_M1895);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_Mk_2",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",1,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleAssaultRifleman") : {
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,SOV_MAIN_WEAPON_PPSH_M);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,SOV_GUN_WEAPON_M1895);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_Mk_2",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",1,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleSniper") : {
				_unit addWeapon "LIB_Binocular_SU";
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,SOV_MAIN_WEAPON_M9130PU);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,SOV_GUN_WEAPON_T33);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_Mk_2",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",2,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleATSpecialist") : {
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,SOV_MAIN_WEAPON_ATRIFLE);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,SOV_GUN_WEAPON_M1895);
				//ADD_WEAPON_AND_MAGAZINES_ON_BACKPACK(_unit,GER_LAUNCHER_WEAPON_RPBZ);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_Mk_2",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",1,1);
			};
			case (localize "STR_MAWII_ww2_modules_RoleTankCrew") : {
				_unit addWeapon "LIB_Binocular_SU";
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,SOV_MAIN_WEAPON_PPSH_M);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,SOV_GUN_WEAPON_T33);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",2,1);
			};
			case (localize "STR_MAWII_ww2_modules_RolePilot") : {
				_unit addWeapon "LIB_Binocular_SU";
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,SOV_GUN_WEAPON_T33);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",2,1);
			};			
			default  {
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,SOV_MAIN_WEAPON_M9130);
				ADD_WEAPON_AND_MAGAZINES_ON_VEST(_unit,SOV_GUN_WEAPON_T33);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_Mk_2",1,1);
				ADD_MAGAZINE_CARGO_ON_VEST(_unit,"LIB_US_M18",1,1);
			};
		};
	};
};



