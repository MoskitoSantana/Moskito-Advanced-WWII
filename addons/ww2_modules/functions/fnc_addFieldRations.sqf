#include "script_component.hpp"

params ["_unit"];

_food = ["ACE_Canteen","ACE_MRE_LambCurry"];

{
	// Current result is saved in variable _x
	_unit addItemToUniform _x;
} forEach _food;