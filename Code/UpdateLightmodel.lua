local enableDarkerNightModDebug = false
local i = 0

local function printDebug(params)
	if enableDarkerNightModDebug then
		-- print with log number
		i = i + 1

		print(i .. ' ' .. tostring(params))
	end
end

local function rgb(r,g,b)
	return {
		r=r,
		g=g,
		b=b,
	}
end

local interpolations = {
	"Light",
	["Light"] = function (base, target)
		return math.floor((base + base + target) / 3)
	end,
	"Strong",
	["Strong"] = function (base, target)
		return math.floor((base + target + target) / 3)
	end,
	"Absolute",
	["Absolute"] = function (base, target)
		return target
	end,
}

local sepSelector = ', '
local lightmodelModifiers = {}
MOG__NocturnalBeauty__Options_Base__Default = "Melancholy Calm, Strong"
MOG__NocturnalBeauty__Options_Base = {
	"Vanilla",
	"Custom",
}
MOG__NocturnalBeauty__Options_Inheritable__Inherit = "«Same as Night»"
MOG__NocturnalBeauty__Options_Inheritable = {
	MOG__NocturnalBeauty__Options_Inheritable__Inherit,
	"Vanilla",
	"Custom",
}

local function addLightmodelModifier(id, config)
	lightmodelModifiers[id] = config

	for _,variant in ipairs(interpolations) do
		local selector = id .. sepSelector .. variant

		table.insert(
			MOG__NocturnalBeauty__Options_Base,
			selector
		)
		table.insert(
			MOG__NocturnalBeauty__Options_Inheritable,
			selector
		)
	end
end

addLightmodelModifier("Abyss of Darkness", {
	ae_key_bias = -1900000,
	gamma = rgb(
		0,
		0,
		0
	),
})
addLightmodelModifier("Blood Moon", {
	ae_key_bias = -1700000,
	gamma = rgb(
		96,
		0,
		0
	),
})
addLightmodelModifier("Dusk till Dawn", {
	ae_key_bias = -1600000,
	gamma = rgb(
		64,
		16,
		8
	),
})
addLightmodelModifier("London Cheer", {
	ae_key_bias = -1700000,
	desaturation = 50,
	gamma = rgb(
		42,
		42,
		72
	),
})
addLightmodelModifier("Melancholy Calm", {
	ae_key_bias = -1300000,
	gamma = rgb(
		0,
		0,
		96
	),
})
addLightmodelModifier("Noir", {
	ae_key_bias = -1200000,
	desaturation = 100,
})
addLightmodelModifier("Watery Grave", {
	ae_key_bias = -1600000,
	gamma = rgb(
		0,
		42,
		96
	),
})
addLightmodelModifier("Swamp Thing", {
	ae_key_bias = -1500000,
	gamma = rgb(
		16,
		42,
		0
	),
})

local function getSetting(id)
	if string.match(id, "_Firestorm") then
		local setting = CurrentModOptions.MOG__NocturnalBeauty__Lightmodel_Firestorm

		if setting ~= MOG__NocturnalBeauty__Options_Inheritable__Inherit then
			return setting
		end
	end

	if string.match(id, "_DustStorm") then
		local setting = CurrentModOptions.MOG__NocturnalBeauty__Lightmodel_Duststorm

		if setting ~= MOG__NocturnalBeauty__Options_Inheritable__Inherit then
			return setting
		end
	end

	if string.match(id, "_RainStorm") then
		local setting = CurrentModOptions.MOG__NocturnalBeauty__Lightmodel_Rainstorm

		if setting ~= MOG__NocturnalBeauty__Options_Inheritable__Inherit then
			return setting
		end
	end

	if string.match(id, "_Underground") then
		local setting = CurrentModOptions.MOG__NocturnalBeauty__Lightmodel_Underground

		if setting ~= MOG__NocturnalBeauty__Options_Inheritable__Inherit then
			return setting
		end
	end

	return CurrentModOptions.MOG__NocturnalBeauty__Lightmodel_Night
end

local baseValues = {}

local function getOverride(lightmodel, selector)
	local baseValue = baseValues[lightmodel.id]

	if not baseValue then
		local r,g,b = GetRGB(lightmodel.gamma)

		baseValue = {
			ae_key_bias = lightmodel.ae_key_bias,
			desaturation = lightmodel.desaturation,
			gamma = rgb( r,g,b ),
		}

		baseValues[lightmodel.id] = baseValue
	end

	printDebug('lightmodel.id')
	printDebug(lightmodel.id)

	printDebug('baseValue.ae_key_bias = ' .. baseValue.ae_key_bias)
	printDebug('baseValue.desaturation = ' .. baseValue.desaturation)
	printDebug('baseValue.gamma = [' .. baseValue.gamma.r .. ',' .. baseValue.gamma.g .. ',' .. baseValue.gamma.b .. ']')

	local r,g,b = GetRGB(lightmodel.gamma)
	printDebug('lightmodel.gamma = [' .. r .. ',' .. g .. ',' .. b .. '] = ' .. tostring(lightmodel.gamma))

	printDebug('selector = ' .. selector)

	if selector == "Vanilla" then
		return {
			ae_key_bias = baseValue.ae_key_bias,
			desaturation = baseValue.desaturation,
			gamma = RGB(
				baseValue.gamma.r,
				baseValue.gamma.g,
				baseValue.gamma.b
			),
		}
	end

	if selector == "Custom" then
		return {
			ae_key_bias = CurrentModOptions.MOG__NocturnalBeauty__LightmodelCustom_AutoExposureBias,
			desaturation = CurrentModOptions.MOG__NocturnalBeauty__LightmodelCustom_Desaturation,
			gamma = RGB(
				CurrentModOptions.MOG__NocturnalBeauty__LightmodelCustom_GammaRed,
				CurrentModOptions.MOG__NocturnalBeauty__LightmodelCustom_GammaGreen,
				CurrentModOptions.MOG__NocturnalBeauty__LightmodelCustom_GammaBlue
			),
		}
	end

	local id, variant = string.match(selector, "(.+)" .. sepSelector .. "(.+)")

	printDebug('id')
	printDebug(id)
	printDebug('variant')
	printDebug(variant)

	local target = lightmodelModifiers[id]
	local interpolate = interpolations[variant]
	printDebug('target')
	printDebug(target)
	printDebug('interpolate')
	printDebug(interpolate)

	local override = {}
	printDebug('override')
	printDebug(override)

	printDebug('target.ae_key_bias')
	printDebug(target.ae_key_bias)
	printDebug('target.desaturation')
	printDebug(target.desaturation)
	if target.gamma then
		printDebug('target.gamma = [' .. target.gamma.r .. ',' .. target.gamma.g .. ',' .. target.gamma.b .. ']')
	else
		printDebug('target.gamma = ' .. tostring(target.gamma))
	end

	if target.ae_key_bias then
		override.ae_key_bias = interpolate(baseValue.ae_key_bias, target.ae_key_bias)
	else
		override.ae_key_bias = baseValue.ae_key_bias
	end

	if target.desaturation then
		override.desaturation = interpolate(baseValue.desaturation, target.desaturation)
	else
		override.desaturation = baseValue.desaturation
	end

	if target.gamma then
		override.gamma = RGB(
			interpolate(baseValue.gamma.r, target.gamma.r),
			interpolate(baseValue.gamma.g, target.gamma.g),
			interpolate(baseValue.gamma.b, target.gamma.b)
		)
	else
		override.gamma = baseValue.gamma
	end

	printDebug('override.ae_key_bias')
	printDebug(override.ae_key_bias)
	printDebug('override.desaturation')
	printDebug(override.desaturation)
	printDebug('override.gamma')
	printDebug(override.gamma)

	return override
end

local function applyLightmodel()
	local lightmodel = CurrentLightmodel[1]

	if not lightmodel.night then
		printDebug("not night")
		return
	end

	local override = getOverride(
		lightmodel,
		getSetting(lightmodel.id)
	)

	for k,v in pairs(override) do
		lightmodel[k] = v
		printDebug('applyLightmodel: ' .. k .. ' = ' .. tostring(v))
	end

	SetLightmodel(1, lightmodel)
end

OnMsg.OptionsApply = applyLightmodel
-- To run on Main Menu start and then load at first Tactical map open
OnMsg.PostNewMapLoaded = applyLightmodel
-- To run after ModOptions change or Mod Editor reload
OnMsg.Autorun = applyLightmodel
