/*
	Author: TheTimidShade

	Description:
		Module function for Configure Mods module.
		Module is only executed on server

	Parameters:
		0: OBJECT - Placed module.
		1: ARRAY - Objects that can be affected by the module.
		2: BOOL - Whether module is activated (synced triggers are active)
		
	Returns:
		NONE
*/

params [
	["_module", objNull, [objNull]],
	["_units", [], [[]]],
	["_activated", true, [true]]
];

if (!isServer) exitWith {};

if (_activated) then {
	private _enableBeam = _module getVariable ["EnableBeam", true];
	private _enableCloak = _module getVariable ["EnableCloak", true];
	private _enableEmission = _module getVariable ["EnableEmission", true];
	private _enableLightsSirens = _module getVariable ["EnableLightsSirens", true];

	// Let init script know which mods are disabled via variables
	if (!_enableBeam) then {tts_effects_aio_beam_enabled = false; publicVariable "tts_effects_aio_beam_enabled";};
	if (!_enableCloak) then {tts_effects_aio_cloak_enabled = false; publicVariable "tts_effects_aio_cloak_enabled";};
	if (!_enableEmission) then {tts_effects_aio_emission_enabled = false; publicVariable "tts_effects_aio_emission_enabled";};
	if (!_enableLightsSirens) then {tts_effects_aio_lns_enabled = false; publicVariable "tts_effects_aio_lns_enabled";};

	tts_effects_aio_init_done = true; publicVariable "tts_effects_aio_init_done";
};
