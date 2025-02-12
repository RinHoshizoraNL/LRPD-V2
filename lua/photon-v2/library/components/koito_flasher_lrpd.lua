if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Author = "Photon"

COMPONENT.Credits = {
	Model = "SGM",
	Code = "Schmal"
}

COMPONENT.PrintName = [[Koito Flasher LRPD]]

COMPONENT.Model = "models/sentry/props/koitoflasher.mdl"

COMPONENT.SubMaterials = {

}

local wScale = 0.9
local bScale = 0.66
local rScale = 0.66

local blue = { r = 0, g = 255, b = 255 }
local red = { r = 255, g = 64, b = 0 }
local amber = { r = 255, g = 100, b = 0 }

COMPONENT.ElementStates = {
	["2D"] = {
		["~OFF"] = {
			Intensity = 0,
			IntensityTransitions = true,
			IntensityGainFactor = 9,
			IntensityLossFactor = 12,
		},
		["~R"] = {
			Blend = PhotonColor( 255, 0, 0 ),
			SourceFillColor = PhotonColor( 255, 0, 0 ):Negative(true):Blend( red ):GetBlendColor(),
			GlowColor = PhotonColor( 255, 0, 0 ):Negative(true):Blend(red):Scale(0.6):GetBlendColor(),
			SubtractiveMid = PhotonColor( 255, 0, 0 ):Negative(true):Blend(red):Scale(0.6):GetBlendColor(),
			SourceDetailColor = PhotonColor( 255,192,0 ):Blend(red):GetBlendColor(), 
			InnerGlowColor = PhotonColor(255, 0, 0):Blend(red):Scale( rScale ):GetBlendColor(),
			ShapeGlowColor = PhotonColor(255, 0, 0):Blend(red):GetBlendColor(),
			Intensity = 1,
			IntensityTransitions = true,
			IntensityGainFactor = 9,
			IntensityLossFactor = 25,
		},
		["~RI"] = {
			Blend = PhotonColor( 255, 0, 0 ),
			SourceFillColor = PhotonColor( 255, 0, 0 ):Negative(true):Blend( red ):GetBlendColor(),
			GlowColor = PhotonColor( 255, 0, 0 ):Negative(true):Blend(red):Scale(0.6):GetBlendColor(),
			SubtractiveMid = PhotonColor( 255, 0, 0 ):Negative(true):Blend(red):Scale(0.6):GetBlendColor(),
			SourceDetailColor = PhotonColor( 255,192,0 ):Blend(red):GetBlendColor(), 
			InnerGlowColor = PhotonColor(255, 0, 0):Blend(red):Scale( rScale ):GetBlendColor(),
			ShapeGlowColor = PhotonColor(255, 0, 0):Blend(red):GetBlendColor(),
			Intensity = 1,
			IntensityTransitions = true,
			IntensityGainFactor = 25,
			IntensityLossFactor = 25,
		},
	},
	["Mesh"] = {
		["OFF"] = { Intensity = 0, IntensityTransitions = true },
		["~R"] = { 
			Intensity = 1,
			IntensityTransitions = true,
			BloomColor = PhotonColor( 255, 0, 0 ):Blend( red ):GetBlendColor(),
			DrawColor = PhotonColor( 255, 90, 0 ):Blend( red ):GetBlendColor(),
		},
	},
	["Projected"] = {
		["~R"] = {
			Inherit = "R",
			Intensity = 1,
			IntensityTransitions = true,
		},
	},
}

COMPONENT.Templates = {
	["2D"] = {
		Light = {
			Shape = "photon/sprites/sprite_generic",
			Detail = "photon/sprites/sprite_generic",
			MaterialBloom = "photon/sprites/sprite_generic",
			Width = 7.7,
			Height = 7.7,
			Scale = 1.75,
		},
	},
	["Mesh"] = {
		Mesh = {
			Model = "models/sentry/props/koitoflasher_lights3.mdl",
			Scale = 1.0,
			IntensityGainFactor = 10,
			IntensityLossFactor = 4,
		},
	},
	["Projected"] = {
		Projected = {
			FOV = 80,
			Texture = "effects/flashlight/soft",
			NearZ = 2,
			FarZ = 1000,
			Brightness = 1.0,
			IntensityGainFactor = 10,
			IntensityLossFactor = 4,
			DeactivationState = "~OFF",
		}
	},
}

COMPONENT.StateMap = "[~B] 1 2"

local fov = 180

COMPONENT.Elements = {
	[1] = { "Mesh", Vector( 0, 0, 0 ), Angle( 0, 180, 0 ), "sentry/props/koitoflasher/light_mesh", DrawMaterial = "sentry/props/koitoflasher/glow_gradient_a", BloomMaterial = "sentry/props/koitoflasher/glow",},
	[2] = { "Projected", Vector( 0, 0, 0 ), Angle( 0, 0, -90 ), },
}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	Sprites = {
		Frames = {
			[0] = "[~OFF] 1",
			[1] = "1",
		},
		Sequences = {
			ON = sequence()
			:Steady(1,9)
			:Steady(0,9)
			:Steady(1,9)
			:Steady(0,9),
			Rapid = sequence()
			:Steady(1,4)
			:Steady(0,4)
			:Steady(1,4)
			:Steady(0,4),
		},
	},
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = {
			Sprites = "ON",
		},
		["MODE2"] = {
			Sprites = "ON",
		},
		["MODE3"] = {
			Sprites = "Rapid",
		},
	}
}