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
	private _enableBeam = _module getVariable ["EnableBeam", 1];
	private _enableCloak = _module getVariable ["EnableCloak", 1];
	private _enableEmission = _module getVariable ["EnableEmission", 1];

	tts_effects_aio_disable_beam = !_enableBeam;
	tts_effects_aio_disable_cloak = !_enableCloak;
	tts_effects_aio_disable_emission = !_enableEmission;

	{publicVariable _x} forEach [
		"tts_effects_aio_disable_beam",
		"tts_effects_aio_disable_cloak",
		"tts_effects_aio_disable_emission"
	];
};
