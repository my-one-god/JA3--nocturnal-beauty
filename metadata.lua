return PlaceObj('ModDef', {
	'title', "[MOG] Nocturnal Beauty",
	'image', "[MOG] Nocturnal Beauty.png",
	'screenshot1', "Screenshots/[MOG] Nocturnal Beauty - 00 - Vanilla.jpg",
	'screenshot2', "Screenshots/[MOG] Nocturnal Beauty - 01 - Abyss of Darkness, Light.jpg",
	'screenshot3', "Screenshots/[MOG] Nocturnal Beauty - 02 - Abyss of Darkness, Strong.jpg",
	'screenshot4', "Screenshots/[MOG] Nocturnal Beauty - 03 - Abyss of Darkness, Absolute.jpg",
	'screenshot5', "Screenshots/[MOG] Nocturnal Beauty - 04 - Blood Moon.jpg",
	'screenshot6', "Screenshots/[MOG] Nocturnal Beauty - 05 - Dusk till Dawn.jpg",
	'screenshot7', "Screenshots/[MOG] Nocturnal Beauty - 06 - London Cheer.jpg",
	'screenshot8', "Screenshots/[MOG] Nocturnal Beauty - 07 - Melancholy Calm.jpg",
	'screenshot9', "Screenshots/[MOG] Nocturnal Beauty - 08 - Noir.jpg",
	'screenshot10', "Screenshots/[MOG] Nocturnal Beauty - 09 - Swamp Thing.jpg",
	'screenshot11', "Screenshots/[MOG] Nocturnal Beauty - 10 - Watery Grave.jpg",

	'last_changes', "Fix for bug when switching between items with different sets of settings + Screenshots",
	'id', "Tpi36ru",
	'steam_id', "3274783005",
	'author', "MyOneGod",
	'version', 4,
	'lua_revision', 233360,
	'saved_with_revision', 350233,
	'code', {
		"Code/UpdateLightmodel.lua",
	},
	'default_options', {
		MOG__NocturnalBeauty__LightmodelCustom_AutoExposureBias = 0,
		MOG__NocturnalBeauty__LightmodelCustom_Desaturation = 0,
		MOG__NocturnalBeauty__LightmodelCustom_GammaBlue = 128,
		MOG__NocturnalBeauty__LightmodelCustom_GammaGreen = 128,
		MOG__NocturnalBeauty__LightmodelCustom_GammaRed = 128,

		MOG__NocturnalBeauty__Lightmodel_Night = MOG__NocturnalBeauty__Options_Base__Default,
		MOG__NocturnalBeauty__Lightmodel_Firestorm = MOG__NocturnalBeauty__Options_Inheritable__Inherit,
		MOG__NocturnalBeauty__Lightmodel_Duststorm = MOG__NocturnalBeauty__Options_Inheritable__Inherit,
		MOG__NocturnalBeauty__Lightmodel_Rainstorm = MOG__NocturnalBeauty__Options_Inheritable__Inherit,
		MOG__NocturnalBeauty__Lightmodel_Underground = MOG__NocturnalBeauty__Options_Inheritable__Inherit,
	},
	'saved', 1719327637,
	'code_hash', -7242090951090223830,
	'affected_resources', {},
	'TagVisuals&Graphics', true,
	'description',
	"[h1]Nocturnal Beauty [MOG][/h1]"
	.."\n[b][i]Making Nights look gorgeous.[/i][/b]"
	.."\n"
	.."\n[h2]Credit[/h2]"
	.."\nThis Mod has been heavily inspired by "
		.."[url=https://steamcommunity.com/profiles/76561198092416374/myworkshopfiles/?appid=1084160]ice-design[/url]'s "
		.."Mod [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3013164321]Darker Nights - NightOps Fix[/url]. "
		.."Thanks go to them!"
	.."\n"
	.."\n[h2]Features[/h2]"
	.."\n[h3]"
		.."[b]Choose from a variety of mood-setting color palettes[/b]"
	.."\n[/h3]"
	.."\n[list]"
	.."\n	[*][b]Abyss of Darkness:[/b] as black as it gets while still allowing you to actually see what's what"
	.."\n	[*][b]Blood Moon:[/b] everything tinged a deep crimson"
	.."\n	[*][b]Dusk till Dawn:[/b] orange-red for that gloomy feeling"
	.."\n	[*][b]London Cheer:[/b] like a rainy night in the British capital"
	.."\n	[*][b]Melancholy Calm [i][noparse][default][/noparse][/i]:[/b] bluish tones that make it feel like a quiet night"
	.."\n	[*][b]Noir:[/b] if you want to feel like a 50s sleuth, this is your theme"
	.."\n	[*][b]Swamp Thing:[/b] it is green, and a sane person would dread it… you're gonna like it"
	.."\n	[*][b]Watery Grave:[/b] for those nights when you just want to stay under the surface of a calm body of water"
	.."\n	[*][b]Vanilla:[/b] …why did you even install this mod?!"
	.."\n	[*][b]Custom:[/b] allows you to set the tone just right, no limits… also no guarantees – you mess this up, it's on you. Enjoy!"
	.."\n[/list]"
	.."\n"
	.."\n[h3]"
		.."[b]Each palette is available in three different strengths, for more or less departure from Vanilla[/b]"
	.."\n[/h3]"
	.."\n[list]"
	.."\n	[*][b]Absolute:[/b] Fully replace the Vanilla Lightmodel"
	.."\n	[*][b]Light:[/b] Tinge the Vanilla Lightmodel with the new color palette but leave some of the original"
	.."\n	[*][b]Strong:[/b] Between Light and Absolute"
	.."\n[/list]"
	.."\nEvery environment in the game can have an individual color scheme based on terrain, time, weather."
	.."\nThis gradation allows you to keep some of that alive while still pushing towards a different aesthetic."
	.."\nAdditionally, the Absolute strength is usually quite dark and you may just not want to go that far."
	.."\n"
	.."\n[h3]"
		.."[b]Set a different color palette for each type of dark environment[/b]"
	.."\n[/h3]"
	.."\n[list]"
	.."\n	[*][b]Night[/b]"
	.."\n	[*][b]Fire Storm[/b]"
	.."\n	[*][b]Dust Storm[/b]"
	.."\n	[*][b]Rain Storm[/b]"
	.."\n	[*][b]Underground[/b]"
	.."\n[/list]"
	.."\n"
	.."\n[h3]"
		.."[b]Create your own color palette[/b]"
	.."\n[/h3]"
	.."\n[list]"
	.."\n	[*][b]Color gamma:[/b] dial red/green/blue channels up or down"
	.."\n	[*][b]Desaturation:[/b] as monotone or as colorful as you want"
	.."\n	[*][b]Exposure:[/b] make it brighter or darker"
	.."\n	[*][i]You can use this to create a new palette. "
		.."Then send me a screenshot of your settings and I may just include it in the set of palettes[/i]"
	.."\n[/list]"
	.."\n"
	.."\n[h2]Known issues[/h2]"
	.."\n[list]"
	.."\n[/list]"
	.."\n[i]None, works like a charm 👍[/i]"
})
