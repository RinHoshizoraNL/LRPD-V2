if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Author = "SGM"

COMPONENT.Credits = {
	Code = "SGM",
	Model = "SGM",
}

COMPONENT.Phase = nil

COMPONENT.PrintName = [[Osaka Siren LAF-150 LRPD]]

COMPONENT.Model = "models/sentry/props/jp/laf150.mdl"

COMPONENT.Templates = {
	["2D"] = {
		Light = {
		    Width = 3.5,
			Height = 3.5,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/laf150_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/laf150_detail.png").MaterialName,
			Scale = 1,
			IntensityGainFactor = 3,
			IntensityLossFactor = 3,
		},
    }
}

COMPONENT.Elements = {
	[1] = { "Light", Vector( 0.6, 0.5, 0.2 ), Angle( 0, 0, 0 ) },
	[2] = { "Light", Vector( -0.7, 0.5, 0.2 ), Angle( 0, 0, 0 ) },
	[3] = { "Light", Vector( 2.3, 0.0, 0.2 ), Angle( 0, -40, 0 ) },
	[4] = { "Light", Vector( -2.4, -0.1, 0.2 ), Angle( 0, 40, 0 ) },
}

local red = { r = 255, g = 64, b = 0 }
local rScale = 0.66

COMPONENT.ElementStates = {
	["2D"] = {
		["R"] = {
			Inherit = "R",
			Intensity = 1,
			Blend = PhotonColor( 255, 0, 0 ),
			SourceFillColor = PhotonColor( 255, 0, 0 ):Negative(true):Blend( red ):GetBlendColor(),
			GlowColor = PhotonColor( 255, 0, 0 ):Negative(true):Blend(red):Scale(0.6):GetBlendColor(),
			SubtractiveMid = PhotonColor( 255, 0, 0 ):Negative(true):Blend(red):Scale(0.6):GetBlendColor(),
			SourceDetailColor = PhotonColor( 255,192,0 ):Blend(red):GetBlendColor(), 
			InnerGlowColor = PhotonColor(255, 0, 0):Blend(red):Scale( rScale ):GetBlendColor(),
			ShapeGlowColor = PhotonColor(255, 0, 0):Blend(red):GetBlendColor(),
		},
	},
}

COMPONENT.StateMap = "[B] 1 2 3 4"

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	["Light"] = {
		Frames = {
			[1] = "1 2 3 4",
			[2] = "1 2 3 4",
		},
		Sequences = {
			["ON"] = {

			},
			["SINGLE"] = sequence():Flash(0, 1, 1):Stretch(1),
			["QUAD"] = sequence():TripleFlash(0, 1):Stretch(1)
		}
	},
	["DVI"] = {
		Frames = {
			[0] = "[~B*0.5] 1 2 3 4",
			[1] = "1:~B 2:~B 3:~B 4:~B",
		},
		Sequences = {
			["ON"] = sequence():Sequential(0, 1):Stretch(8)
		}
	},
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = {
			DVI = "ON"
		},
		["MODE2"] = {
			Light = "SINGLE"
		},
		["MODE3"] = {
			Light = "QUAD"
		}
	},
}