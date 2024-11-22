#include "script_component.hpp"

params ["_radioStation","_side"];

[65, [_radioStation, _side], {
	params["_args"];
    _args params ["_radioStation","_side"];
	
	_radioStation say2D ["morse_f"];

	_sideColor = [_side,true] call BIS_fnc_sideColor;

	_drawMarker = {
		params ["_side","_icon","_text","_pos"];
		_marker = createMarker [ format ["%1", _pos ], _pos ];
		_marker setMarkerText format ["%1 ", _text select 0 ]; 
		_marker setMarkerShape "ICON";
		_marker setMarkerType _icon;
		_marker setMarkerColor ([_side,true] call BIS_fnc_sideColor);
	};

	private _nearestEnemySquads = (allGroups) select {( ((getPos _radioStation) distance (getPos leader _x)) <= GETVAR(_radioStation,mawii_radio_static_radio_sniffing_range,300) && {side _x != _side} )};
	private _allySquads = (allGroups) select {( ((getPos _radioStation) distance (getPos leader _x)) <= GETVAR(_radioStation,mawii_radio_static_radio_sniffing_range,300) && {side _x == _side} )};
	private _rtoAllyUnits = [];

	{ 
		{
		if (
			GETVAR(_x,current_player_description,ROLE_RIFLEMAN) == ROLE_RTO && 
			([_x, "acex_intelitems_notepad"] call ace_common_fnc_hasMagazine) && 
			((backpack _x) in ["B_MAWII_US_RADIO_BACKPACK","B_MAWII_GER_RADIO_BACKPACK","B_MAWII_SOV_RADIO_BACKPACK"]) ) then {
			 	_rtoAllyUnits pushBack (_x) 
			} 
		} forEach units _x; 
	} forEach _allySquads; 

	{
		private _unitRole = GETVAR(_x,current_player_description,ROLE_RIFLEMAN);
		if (_unitRole == ROLE_RTO) then {
			_rtoUnit = _x;
			_radio = backpack _x;
			if ( ([_rtoUnit, "acex_intelitems_notepad"] call ace_common_fnc_hasMagazine) and (_radio in ["B_MAWII_US_RADIO_BACKPACK","B_MAWII_GER_RADIO_BACKPACK","B_MAWII_SOV_RADIO_BACKPACK"]) ) then {
				(backpackContainer _rtoUnit) say2D ["morse_a"];
				_x removeMagazine "acex_intelitems_notepad";
				//_mapControl = (findDisplay 12) displayctrl 51;
				_squadPositions = [];
				{ 
					_squadPos = mapGridPosition (getPos leader _x);
					_squadId = groupID _x;
					_squadSide = switch (side _x) do {
						case east : { "RED"; };
						case west : { "BLU"; };
						case independent : { "INDP"; };
						case civilian : { "CIV"; };
					};
					_squadPositions pushBack (format ["%4:%1:%2%3",_squadId,_squadPos,endl,_squadSide]);  
					(backpackContainer _rtoUnit) say2D ["morse_i"];
				} forEach _nearestEnemySquads;
				[_x, "acex_intelitems_notepad", _squadPositions joinString "" ] call ace_intelitems_fnc_addIntel;	
			};
		} else {continue;};
	} forEach _rtoAllyUnits;

	hint "Radio Station Deployed";
	}, 
	{hint "Scan Failed"}, "Scanning for nearest squads"] call ace_common_fnc_progressBar;