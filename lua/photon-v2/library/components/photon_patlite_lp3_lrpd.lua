if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Author = "Rin Hoshizora"

COMPONENT.Credits = {
	Code = "Schmal",
	Model = "SGM",
}

COMPONENT.Phase = nil

COMPONENT.PrintName = [[Patlite LP3 LRPD]]

COMPONENT.Model = "models/sentry/props/patlite_lp3.mdl"

COMPONENT.Templates = {
	["2D"] = {
		Light = {
		    Width = 3.5,
			Height = 3.5,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/rin_patlite_lp3_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/rin_patlite_lp3_detail.png").MaterialName,
			Scale = 2,
			IntensityGainFactor = 3,
			IntensityLossFactor = 3,
		},
    }
}

COMPONENT.Elements = {
	[1] = { "Light", Vector( 0, 0, 0 ), Angle( 0, 0, 0 ) },
}

COMPONENT.ElementStates = {}

COMPONENT.StateMap = "[B] 1"

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	["Light"] = {
		Frames = {
			[1] = "1",
			[2] = "1",
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
			[0] = "[~B*0.5] 1",
			[1] = "1:~B",
		},
		Sequences = {
			["ON"] = sequence():Sequential(0, 1):Stretch(8)
		}
	},
}

COMPONENT.InputPriorities = {
	["Virtual.Siren"] = 200
}

COMPONENT.VirtualOutputs = {
	-- Virtual channel name
	["Virtual.Siren"] = {
		{
			Mode = "T1",
			Conditions = {
				["Emergency.Siren"] = { "T1" },
				["Emergency.Warning"] = { "MODE1", "MODE2", "MODE3" }
			}
		}
		-- Mode
		-- ["T1"] = { -- T1 is active when...
		-- 	{ -- (Condition #1)
		-- 		-- Siren mode is set to T1...
		-- 		["Emergency.Siren"] = { "T1" },
		-- 		-- AND Warning mode is MODE1, MODE2 or MODE3
		-- 	}
		-- }
	}
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
	["Emergency.Marker"] = {
		["ON"] = {
			Light = "ON"
		}
	}
	-- ["Virtual.Siren"] = {
	-- 	["T1"] = {
	-- 		Light = "ON"
	-- 	}
	-- }
}