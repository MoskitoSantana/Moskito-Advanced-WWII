#include "script_component.hpp"

params ["_radioStation","_side"];

_radioStation say2D ["morse_f"];

_sideColor = [_side,true] call BIS_fnc_sideColor;

private _nearestSquads = (groups _side) select {( ((getPos _radioStation) distance (getPos leader _x)) <= GETVAR(_radioStation,mawii_maping_range,500) )};  

{
	{
		 _unitRole = GETVAR(_x,current_player_description,ROLE_RIFLEMAN);
		if (_unitRole == ROLE_RTO) then {
		
			_rtoUnit = _x;
			_radio = backpack _x;
			
			if ( ([_rtoUnit, "acex_intelitems_notepad"] call ace_common_fnc_hasMagazine) and (_radio in ["B_MAWII_US_RADIO_BACKPACK","B_MAWII_GER_RADIO_BACKPACK","B_MAWII_SOV_RADIO_BACKPACK"]) ) then {
				
				(backpackContainer player) say2D ["morse_a"];

				_x removeMagazine "acex_intelitems_notepad";

				_mapControl = (findDisplay 12) displayctrl 51;
				_squadPositions = [];

				{ 
					_squadPos = _mapControl posWorldToScreen (getPos _rtoUnit);
					_squadId = groupID _x;
					_squadPositions pushBack (format ["%1 : %2%3",_squadId,_squadPos,endl]); 
					
					(backpackContainer player) say2D ["morse_r"];
					
				} forEach _nearestSquads;
				
				[_x, "acex_intelitems_notepad", _squadPositions joinString "" ] call ace_intelitems_fnc_addIntel;	
			};
		} else {continue;};
	} forEach units _x;
} forEach _nearestSquads;