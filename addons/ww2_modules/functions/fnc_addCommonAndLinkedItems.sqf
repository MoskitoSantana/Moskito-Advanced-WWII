#include "script_component.hpp"

params ["_unit"];

{ _unit addItemToUniform _x; } forEach COMMON_OBJECTS;
{ _unit linkItem _x; } forEach COMMON_LINKED_OBJECTS;