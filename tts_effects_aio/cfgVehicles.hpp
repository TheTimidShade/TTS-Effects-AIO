class CfgVehicles {
	class Logic;
	class Module_F: Logic
	{
		class AttributesBase
		{
			class Default;
			class Edit;
			class Combo;
			class Checkbox;
			class CheckboxNumber;
			class ModuleDescription;
			class Units;
		};
		class ModuleDescription;
	};
	
	class tts_effects_aio_module : Module_F {
		author = "TheTimidShade";
		scope = 1;
		scopeCurator = 1;
		is3DEN = 0;
		displayName = "TheTimidShade's Module";
		vehicleClass = "Modules";
		category = "tts_effects_aio_modules";
	};
	
	class tts_effects_aio_moduleConfigureMods : tts_effects_aio_module {
		scope = 2;
		scopeCurator = 0; // module is not available in Zeus
		isDisposable = 1; // 1 if modules is to be disabled once it's activated (i.e., repeated trigger activation won't work)
		isGlobal = 0; // 0 for server only execution, 1 for global execution, 2 for persistent global execution
		isTriggerActivated = 0;
		displayName = "$STR_tts_effects_aio_moduleConfigureMods_title";
		icon = "tts_effects_aio\icons\tts_settings.paa";
		category = "tts_effects_aio_modules";
		function = "tts_effects_aio_fnc_moduleConfigureMods";
		
		class Attributes : AttributesBase {
			class EnableBeam : Checkbox {
				property = "tts_effects_aio_moduleConfigureMods_EnableBeam";
				displayName = "TTS Beam Laser";
				tooltip = "$STR_tts_effects_aio_moduleConfigureMods_enableBeam_desc";
				defaultValue = "1";
			};
			class EnableCloak : Checkbox {
				property = "tts_effects_aio_moduleConfigureMods_EnableCloak";
				displayName = "TTS Cloak/Active Camo";
				tooltip = "$STR_tts_effects_aio_moduleConfigureMods_enableCloak_desc";
				defaultValue = "1";
			};
			class EnableEmission : Checkbox {
				property = "tts_effects_aio_moduleConfigureMods_EnableEmission";
				displayName = "TTS Emission (Blowout)";
				tooltip = "$STR_tts_effects_aio_moduleConfigureMods_enableEmission_desc";
				defaultValue = "1";
			};
			class ModuleDescription: ModuleDescription{};
		};

		class ModuleDescription: ModuleDescription
		{
			description = "$STR_tts_effects_aio_moduleConfigureMods_desc"; // Short description, will be formatted as structured text
		};
	};
}