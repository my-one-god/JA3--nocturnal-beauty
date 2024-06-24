return PlaceObj('ModDef', {
	'title', "[MOG] Nocturnal Beauty",
	'image', "[MOG] Nocturnal Beauty.png",
	'last_changes', "Several color schemes for the various types of darkness",
	'id', "Tpi36ru",
	'author', "MyOneGod",
	'version', 1,
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
	'TagVisuals&Graphics', true,
	'saved', 1719247178,
	'code_hash', 1356345258178995137,
	'affected_resources', {},
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
	.."\n	[*][b]Melancholy Calm <color 222 160 0>[i][noparse][default][/noparse][/i]</color>:[/b] bluish tones that make it feel like a quiet night"
	.."\n	[*][b]Noir:[/b] if you want to feel like a 50s sleuth, this is your theme"
	.."\n	[*][b]Watery Grave:[/b] for those nights when you just want to stay under the surface of a calm body of water"
	.."\n	[*][b]Swamp Thing:[/b] it is green, and a sane person would dread it… you're gonna like it"
	.."\n	[*][b]Vanilla:[/b] …why did you even install this mod?!"
	.."\n	[*][b]Custom:[/b] allows you to set the tone just right, no limits… also no guarantees – you mess this up, it's on you. Enjoy!"
	.."\n[/list]"
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
