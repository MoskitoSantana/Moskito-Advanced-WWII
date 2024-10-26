#include "script_component.hpp"

params [
    ["_mode", "", [""]],
    ["_input", [], [[]]]
];
_input params [
    ["_module", objNull, [objNull]],
    ["_isActivated", false, [true]],
    ["_isCuratorPlaced", false, [true]]
];

_number_of_positions = _module getVariable [QUOTE(NumberOfPositions), 10];
_positions = [];

for "_i" from 0 to _number_of_positions do {
	_position = [_module] call BIS_fnc_randomPosTrigger;
	_position set [0, (_position select 0) + (random [-200,0,350])];
	_position set [1, (_position select 1) + (random [-200,0,350])];
	_position set [2, (_position select 2) + (random [100,400,800])];
	_positions pushBack (_position);
};

switch _mode do {
    case "init": {
        if (is3DEN) then {};
        if (_isActivated) then {
			while { true } do {
//				{
					_position = [_module] call BIS_fnc_randomPosTrigger;
					_position set [0, (_position select 0) + (random [-200,0,350])];
					_position set [1, (_position select 1) + (random [-200,0,350])];
					_position set [2, (_position select 2) + (random [100,400,4000])];
 					_ammo = "LIB_SprGr_FlaK_38_APHE_T"; 
  					[ _position , objNull , _ammo ] call LIB_SYSTEM_FLAK_fnc_createFlakExplosion; 

//  					[ _x , objNull , _ammo ] call LIB_SYSTEM_FLAK_fnc_createFlakExplosion; 
//					sleep 0.7;
//				} forEach _positions;
				sleep 0.5;
			}
        };
    };
    default {};
};

