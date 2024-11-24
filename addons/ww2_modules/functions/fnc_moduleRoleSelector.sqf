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

if (_mode in ["dragged3DEN", "unregisteredFromWorld3DEN"]) exitWith {};

// Get Module Variables Values
private _faction = _module getVariable [QUOTE(FactionSelector), DEFAULT_FACTION];


private _atRole = _module getVariable [QUOTE(RoleAT), false];
private _rtoRole = _module getVariable [QUOTE(RoleRTO), false];
private _medicRole = _module getVariable [QUOTE(RoleMedic), false];
private _sniperRole = _module getVariable [QUOTE(RoleSniper), false];
private _sapperRole = _module getVariable [QUOTE(RoleSapper), false];
private _riflemanRole = _module getVariable [QUOTE(RoleRifleman), false];
private _squadLeaderRole = _module getVariable [QUOTE(RoleSquadLeader), false];
private _machinneGunnerRole = _module getVariable [QUOTE(RoleMachinneGunner), false];
private _assaultRiflemanRole = _module getVariable [QUOTE(RoleAssaultRifleman), false];
private _firstClassMachinneGunnerRole = _module getVariable [QUOTE(RoleFirstClassMachinneGunner), false];
private _pilotRole = _module getVariable [QUOTE(RolePilot), false];
private _tankCrewRole = _module getVariable [QUOTE(RoleTankCrew), false];

switch _mode do {
    case "init": {
        if (is3DEN) exitWith {};
        if (_isActivated) then {
            private _syncObjects = synchronizedObjects _module select {!(_x isKindOf "AnyStaticObject")};
            { 
                if (_rtoRole) then { [_x, _faction,(localize "STR_MAWII_ww2_modules_RoleRTO")] call FUNC(addRoleActionOnSyncObject); };
                if (_atRole) then { [_x, _faction,(localize "STR_MAWII_ww2_modules_RoleATSpecialist")] call FUNC(addRoleActionOnSyncObject); };
                if (_medicRole) then { [_x, _faction,(localize "STR_MAWII_ww2_modules_RoleMedic")] call FUNC(addRoleActionOnSyncObject); };
                if (_sniperRole) then { [_x, _faction,(localize "STR_MAWII_ww2_modules_RoleSniper")] call FUNC(addRoleActionOnSyncObject); };
                if (_sapperRole) then { [_x, _faction,(localize "STR_MAWII_ww2_modules_RoleSapper")] call FUNC(addRoleActionOnSyncObject); };
                if (_riflemanRole) then { [_x, _faction,(localize "STR_MAWII_ww2_modules_RoleRifleman")] call FUNC(addRoleActionOnSyncObject); };
                if (_squadLeaderRole) then { [_x, _faction,(localize "STR_MAWII_ww2_modules_RoleSquadLeader")] call FUNC(addRoleActionOnSyncObject); };
                if (_machinneGunnerRole) then { [_x, _faction,(localize "STR_MAWII_ww2_modules_RoleMachineGunner")] call FUNC(addRoleActionOnSyncObject); };
                if (_assaultRiflemanRole) then { [_x, _faction,(localize "STR_MAWII_ww2_modules_RoleAssaultRifleman")] call FUNC(addRoleActionOnSyncObject); };
                if (_firstClassMachinneGunnerRole) then { [_x,_faction,(localize "STR_MAWII_ww2_modules_RoleFirstClassMachinneGunner")] call FUNC(addRoleActionOnSyncObject); };
                if (_pilotRole) then { [_x,_faction,(localize "STR_MAWII_ww2_modules_RolePilot")] call FUNC(addRoleActionOnSyncObject); };
                if (_tankCrewRole) then { [_x,_faction,(localize "STR_MAWII_ww2_modules_RoleTankCrew")] call FUNC(addRoleActionOnSyncObject); };
            } forEach _syncObjects;
        } else {
			hint "ELSE: Select a faction and a squad type";
        };
    };
    default {};
};