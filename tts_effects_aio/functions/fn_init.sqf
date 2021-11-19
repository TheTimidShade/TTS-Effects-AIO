/*
	Author: TheTimidShade

	Description:
		Initialises TTS Effects AIO. Checks to see if any scripts are disabled and doesn't initialise them if they are.

	Parameters:
		NONE
		
	Returns:
		NONE
*/

// TTS Beam Laser
if (missionNamespace getVariable ["tts_effects_aio_beam_enabled", true]) then {
	[] call tts_beam_fnc_initCustomModules;
};

// TTS Cloak
if (missionNamespace getVariable ["tts_effects_aio_cloak_enabled", true]) then {
	[] call tts_cloak_fnc_initCustomModules;
	[] call tts_cloak_fnc_initCloak;
};

// TTS Emission
if (missionNamespace getVariable ["tts_effects_aio_emission_enabled", true]) then {
	[] call tts_emission_fnc_initCustomModules;
};