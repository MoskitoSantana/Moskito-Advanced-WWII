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
private _onStart = _module getVariable [QUOTE(OnStart), false];

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


switch _mode do {
    case "init": {
        if (is3DEN) exitWith {
            private _syncObjects = synchronizedObjects _module select {!(_x isKindOf "AnyBrain")};
            { 
                [_x, _faction, _x getVariable ['current_player_description', ROLE_RIFLEMAN] ] call FUNC(addRoleOnStartup);
            } forEach _syncObjects;
        };
        if (_isActivated) then {
            private _syncObjects = synchronizedObjects _module select {!(_x isKindOf "AnyBrain")};
            { 
                [_x, _faction, _x getVariable ['current_player_description', ROLE_RIFLEMAN] ] call FUNC(addRoleOnStartup);
            } forEach _syncObjects;
        } else {
			hint "ELSE: Select a faction and a squad type";
        };
    };
    default {};
};