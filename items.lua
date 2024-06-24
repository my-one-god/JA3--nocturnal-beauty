return {
	PlaceObj('ModItemCode', {
		'name', "UpdateLightmodel",
		'CodeFileName', "Code/UpdateLightmodel.lua",
	}),
	PlaceObj('ModItemOptionChoice', {
		'name', "MOG__NocturnalBeauty__Lightmodel_Night",
		'DisplayName', "Darkness color scheme, Night",
		'Help', 'Make nights visually darker and more appealing.',
		'DefaultValue', MOG__NocturnalBeauty__Options_Base__Default,
		'ChoiceList', MOG__NocturnalBeauty__Options_Base,
	}),
	PlaceObj('ModItemOptionChoice', {
		'name', "MOG__NocturnalBeauty__Lightmodel_Firestorm",
		'DisplayName', "Darkness color scheme, Firestorm",
		'Help', 'Make firestorms visually darker and more appealing.',
		'DefaultValue', MOG__NocturnalBeauty__Options_Inheritable__Inherit,
		'ChoiceList', MOG__NocturnalBeauty__Options_Inheritable,
	}),
	PlaceObj('ModItemOptionChoice', {
		'name', "MOG__NocturnalBeauty__Lightmodel_Duststorm",
		'DisplayName', "Darkness color scheme, DustStorm",
		'Help', 'Make dust storms visually darker and more appealing.',
		'DefaultValue', MOG__NocturnalBeauty__Options_Inheritable__Inherit,
		'ChoiceList', MOG__NocturnalBeauty__Options_Inheritable,
	}),
	PlaceObj('ModItemOptionChoice', {
		'name', "MOG__NocturnalBeauty__Lightmodel_Rainstorm",
		'DisplayName', "Darkness color scheme, RainStorm",
		'Help', 'Make rain storms visually darker and more appealing.',
		'DefaultValue', MOG__NocturnalBeauty__Options_Inheritable__Inherit,
		'ChoiceList', MOG__NocturnalBeauty__Options_Inheritable,
	}),
	PlaceObj('ModItemOptionChoice', {
		'name', "MOG__NocturnalBeauty__Lightmodel_Underground",
		'DisplayName', "Darkness color scheme, Underground",
		'Help', 'Make undergrounds visually darker and more appealing.',
		'DefaultValue', MOG__NocturnalBeauty__Options_Inheritable__Inherit,
		'ChoiceList', MOG__NocturnalBeauty__Options_Inheritable,
	}),
	PlaceObj('ModItemOptionNumber', {
		'name', "MOG__NocturnalBeauty__LightmodelCustom_GammaRed",
		'DisplayName', "<color 199 166 155>Custom: Gamma Red</color>",
		'Help',
			"Using the gamma values, the overall coloration can be shifted. "
			.."This works on the <color 199 166 155>Red</color> color channel."
			.."\n"
			.."\n"
			.."Mainly intended for Debugging and Development."
			.."\n"
			.."Works for `Custom` darkness setting."
		,
		'DefaultValue', 128,
		'MaxValue', 255,
	}),
	PlaceObj('ModItemOptionNumber', {
		'name', "MOG__NocturnalBeauty__LightmodelCustom_GammaGreen",
		'DisplayName', "<color 155 177 155>Custom: Gamma Green</color>",
		'Help',
			"Using the gamma values, the overall coloration can be shifted. "
			.."This works on the <color 155 177 155>Green</color> color channel."
			.."\n"
			.."\n"
			.."Mainly intended for Debugging and Development."
			.."\n"
			.."Works for `Custom` darkness setting."
		,
		'DefaultValue', 128,
		'MaxValue', 255,
	}),
	PlaceObj('ModItemOptionNumber', {
		'name', "MOG__NocturnalBeauty__LightmodelCustom_GammaBlue",
		'DisplayName', "<color 144 166 188>Custom: Gamma Blue</color>",
		'Help',
			"Using the gamma values, the overall coloration can be shifted. "
			.."This works on the <color 144 166 188>Blue</color> color channel."
			.."\n"
			.."\n"
			.."Mainly intended for Debugging and Development."
			.."\n"
			.."Works for `Custom` darkness setting."
		,
		'DefaultValue', 128,
		'MaxValue', 255,
	}),
	PlaceObj('ModItemOptionNumber', {
		'name', "MOG__NocturnalBeauty__LightmodelCustom_Desaturation",
		'DisplayName', "<color 160 160 160>Custom: Desaturation</color>",
		'Help',
			"Left is more colorful, right is more greyish."
			.."\n"
			.."\n"
			.."Mainly intended for Debugging and Development."
			.."\n"
			.."Works for `Custom` darkness setting."
		,
		'DefaultValue', 0,
		'MinValue', -100,
		'MaxValue', 100,
		'StepSize', 1,
	}),
	PlaceObj('ModItemOptionNumber', {
		'name', "MOG__NocturnalBeauty__LightmodelCustom_AutoExposureBias",
		'DisplayName', "<color 222 222 222>Custom: Auto Exposure Bias</color>",
		'Help',
			"Left is darker, right is lighter."
			.."\n"
			.."\n"
			.."Mainly intended for Debugging and Development."
			.."\n"
			.."Works for `Custom` darkness setting."
		,
		'DefaultValue', 0,
		'MinValue', -3000000,
		'MaxValue', 3000000,
		'StepSize', 100000,
	}),
}
