if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent() --[[@as PhotonLibraryComponent]]

COMPONENT.Author = "Photon"
COMPONENT.Credits = {
	Vehicle = "SGM",
	Code = "Schmal"
}

COMPONENT.PrintName = "2010 Ford Crown Victoria"

COMPONENT.IsVirtual = true

COMPONENT.Templates = {
	["Pose"] = {
		Lights_park = {
			Parameter = "vehicle_lights_park",
			GainSpeed = 10,
			LossSpeed = 10,
		},
		Lights_low = {
			Parameter = "vehicle_lights_low",
			GainSpeed = 10,
			LossSpeed = 10,
		},
		Gear = {
			Parameter = "vehicle_gear",
			GainSpeed = 5,
			LossSpeed = 5,
		},
		Turnsig = {
			Parameter = "vehicle_turnsig",
			GainSpeed = 5,
			LossSpeed = 5,
		},
	},
	["2D"] = {
		Light = {
			Shape = "sprites/emv/sgm_headlight",
			Detail = "sprites/emv/sgm_headlight",
			MaterialBloom = "sprites/emv/sgm_headlight",
			Width = 10,
			Height = -10,
			Scale = 3.0,
		},
		Light_invis = {
			-- Shape = "sprites/emv/sgm_headlight",
			-- Detail = "sprites/emv/sgm_headlight",
			-- MaterialBloom = "sprites/emv/sgm_headlight",
			Width = 7.7,
			Height = 7.7,
			Scale = 1.0,
		},
		Turn_arrow = {
			Shape = "sentry/cvpi_hd/lights/arrow",
			Detail = "sentry/cvpi_hd/lights/arrow",
			Width = 0.6,
			Height = 0.6,
			Scale = 0.01,
		},
	},
	["DynamicLight"] = {
		Dynamic = {
			Brightness = -2,
			Size = 120,
			InnerAngle = 40,
			OuterAngle = 90,
		}
	},
	["Projected"] = {
		Projected = {
			FOV = 70,
			Texture = "effects/flashlight/soft",
			NearZ = 4,
			FarZ = 2000,
			Brightness = 3,
			IntensityGainFactor = 12,
			IntensityLossFactor = 6,
			DeactivationState = "OFF",
		}
	},
	["Mesh"] = {
		Mesh_static = {
			Model = "models/sentry/cvpi_hd_lights.mdl",
			Scale = 1.0,
		},
		Mesh_static2 = {
			Model = "models/sentry/cvpi_hd_lights.mdl",
			Scale = 1.0,
			IntensityGainFactor = 12,
			IntensityLossFactor = 2.75,
			DeactivationState = "~OFF",
		},
		Mesh_static_slow = {
			Model = "models/sentry/cvpi_hd_lights.mdl",
			Scale = 1.0,
			IntensityGainFactor = 12,
			IntensityLossFactor = 2.75,
			DeactivationState = "~OFF",
		},
		Mesh_static_fast = {
			Model = "models/sentry/cvpi_hd_lights.mdl",
			Scale = 1.0,
			IntensityGainFactor = 12,
			IntensityLossFactor = 6,
			DeactivationState = "~OFF",
		},
		Mesh_hl_l = {
			Model = "models/sentry/cvpi_hd_hl_l.mdl",
			Scale = 1.0,
			IntensityGainFactor = 12,
			IntensityLossFactor = 6,
			DeactivationState = "~OFF",
		},
		Mesh_hl_r = {
			Model = "models/sentry/cvpi_hd_hl_r.mdl",
			Scale = 1.0,
			IntensityGainFactor = 12,
			IntensityLossFactor = 6,
			DeactivationState = "~OFF",
		},
	},
	["Sound"] = {
		Click_on = {
			File = "emv/relay/relay_on.wav",
			Level = 65,
			Pitch = 100,
			DSP = 1,
		},
		Click_off = {
			File = "emv/relay/relay_off.wav",
			Level = 65,
			Pitch = 100,
			DSP = 1,
		},
		Turn_on = {
			File = "emv/cvpi/turn_on.wav",
			Level = 55,
			Pitch = 100,
			DSP = 1,
		},
		Turn_off = {
			File = "emv/cvpi/turn_off.wav",
			Level = 55,
			Pitch = 100,
			DSP = 1,
		},
	},
	["Sub"] = {
		Dials = {
			States = {
				["ON"] = { Material = "sentry/cvpi_hd/gauges_lite" }
			}
		},
		Dials2 = {
			States = {
				["ON"] = { Material = "sentry/cvpi_hd/symbols_on" }
			}
		},
	},
}

local wScale = 0.9
local bScale = 0.66
local rScale = 0.66

local amber = { r = 255, g = 200, b = 0 }

local white = { r = 255, g = 255, b = 255 }

COMPONENT.ElementStates = {
	["Pose"] = {
		["HL"] = {
			Target = 0.6,
		},
		["PARK"] = {
			Target = 2,
		},
		["LEFT"] = {
			Target = -1,
		},
	},
	["Sound"] = {
		["~OFF"] = {
			Mute = true,
			Play = false,
			Volume = 0.2,
		},
		["~ON"] = {
			Mute = false,
			Play = true,
			Volume = 0.2,
		},
	},
	["Projected"] = {
		["~W"] = {
			Inherit = "SW",
			IntensityTransitions = true,
		},
		["~WD"] = {
			Inherit = "SW",
			IntensityTransitions = true,
			Intensity = 0.25,
		},
		["~W2"] = {
			Inherit = "SW",
			IntensityTransitions = true,
			Intensity = 1.25,
		}
	},
	["2D"] = {
		["~OFF"] = {
			Intensity = 0,
			IntensityTransitions = true,
			IntensityGainFactor = 8,
			IntensityLossFactor = 3,
		},
		["~OFF_FAST"] = {
			Intensity = 0,
			IntensityTransitions = true,
			IntensityGainFactor = 8,
			IntensityLossFactor = 6,
		},
		["~W"] = {
			Blend = Color( 200, 200, 255 ),
			SourceDetailColor = PhotonColor(255,245,205):Blend(white):GetBlendColor(),
			SourceFillColor = PhotonColor( 255, 245, 205 ):Blend(white):GetBlendColor(),
			GlowColor = PhotonColor(150*wScale, 150*wScale, 150*wScale):Blend(white):GetBlendColor(),
			InnerGlowColor = PhotonColor(255*wScale, 245*wScale, 205*wScale):Blend(white):GetBlendColor(),
			ShapeGlowColor = PhotonColor(120*wScale, 120*wScale, 120*wScale):Blend(white):GetBlendColor(),
			Intensity = 1,
			IntensityTransitions = true,
			IntensityGainFactor = 8,
			IntensityLossFactor = 3,
		},
		["~A"] = {
			Inherit = "A",
			Intensity = 1,
			IntensityTransitions = true,
			IntensityGainFactor = 12,
			IntensityLossFactor = 6,
		},
		["~G"] = {
			Inherit = "G",
			Intensity = 1,
			IntensityTransitions = true,
			IntensityGainFactor = 12,
			IntensityLossFactor = 3,
		},
	},
	["Mesh"] = {
		["~OFF"] = { Intensity = 0, IntensityTransitions = true },
		["~SW"] = {
			Inherit = "SW",
			Intensity = 1,
			IntensityTransitions = true,
		},
		["~SWD"] = {
			Inherit = "SW",
			Intensity = 0.6,
			IntensityTransitions = true,
		},
		["~SWD2"] = {
			Inherit = "SW",
			Intensity = 0.4,
			IntensityTransitions = true,
		},
		["~DW"] = {
			Inherit = "SW",
			Intensity = 0.75,
			IntensityTransitions = true,
		},
		["~R"] = {
			Intensity = 0.8,
			IntensityTransitions = true,
			BloomColor = PhotonColor( 255, 0, 0 ):Blend( red ):GetBlendColor(),
			DrawColor = PhotonColor( 255, 255, 0 ):Blend( red ):GetBlendColor(),
		},
		["~PDR"] = {
			Intensity = 0.5,
			IntensityTransitions = true,
			BloomColor = PhotonColor( 255, 0, 0 ):Blend( red ):GetBlendColor(),
			DrawColor = PhotonColor( 255, 60, 0 ):Blend( red ):GetBlendColor(),
		},
		["~PR"] = {
			Intensity = 1,
			IntensityTransitions = true,
			BloomColor = PhotonColor( 255, 0, 0 ):Blend( red ):GetBlendColor(),
			DrawColor = PhotonColor( 255, 40, 0 ):Blend( red ):GetBlendColor(),
		},
		["~PRI"] = {
			Intensity = 1,
			BloomColor = PhotonColor( 255, 0, 0 ):Blend( red ):GetBlendColor(),
			DrawColor = PhotonColor( 255, 40, 0 ):Blend( red ):GetBlendColor(),
		},
		["~RI"] = {
			Intensity = 1,
			IntensityTransitions = false,
			BloomColor = PhotonColor( 255, 0, 0 ):Blend( red ):GetBlendColor(),
			DrawColor = PhotonColor( 255, 255, 0 ):Blend( red ):GetBlendColor(),
		},
		["~DR"] = {
			Intensity = 0.5,
			IntensityTransitions = true,
			BloomColor = PhotonColor( 255, 0, 0 ):Blend( red ):GetBlendColor(),
			DrawColor = PhotonColor( 255, 255, 0 ):Blend( red ):GetBlendColor(),
		},
		["~B"] = {
			Intensity = 1,
			IntensityTransitions = true,
			BloomColor = PhotonColor( 0, 190, 255 ):Blend( blue ):GetBlendColor(),
			DrawColor = PhotonColor( 205, 255, 255 ):Blend( blue ):GetBlendColor(),
		},
		["~VDA"] = {
			Intensity = 0.4,
			IntensityTransitions = true,
			BloomColor = PhotonColor( 100, 60, 0 ),
			DrawColor = PhotonColor( 100, 60, 0 ),
		},
		["~DA"] = {
			Intensity = 0.4,
			IntensityTransitions = true,
			BloomColor = PhotonColor( 255, 150, 0 ),
			DrawColor = PhotonColor( 255, 150, 0 ),
		},
		["~A"] = {
			Intensity = 1,
			IntensityTransitions = true,
			BloomColor = PhotonColor( 255, 150, 0 ),
			DrawColor = PhotonColor( 255,150, 0 ),
		},
		["~BW"] = {
			Inherit = "W",
			Intensity = 1,
			IntensityTransitions = false,
		},
	}
}

COMPONENT.ElementGroups = {
}

COMPONENT.Elements = {
	[1] = { "Mesh_static_fast", Vector( 0.0, 0.15, 0.0 ), Angle( 0, 90, 0 ), "sentry/cvpi_hd/lights/headlight_l", DrawMaterial = "sentry/cvpi_hd/lights/lights_bloom", BloomMaterial = "sentry/cvpi_hd/lights/lights_bloom", BoneParent = -1 }, -- Headlight L
	[2] = { "Mesh_static_fast", Vector( 0.0, 0.15, 0.0 ), Angle( 0, 90, 0 ), "sentry/cvpi_hd/lights/headlight_r", DrawMaterial = "sentry/cvpi_hd/lights/lights_bloom", BloomMaterial = "sentry/cvpi_hd/lights/lights_bloom", BoneParent = -1 }, -- Headlight R
	[3] = { "Projected", Vector( -28.249, 106.045, 29.906 ), Rotation = Angle( 2, 90, 0 ), },
	[4] = { "Projected", Vector( 28.249, 106.045, 29.906 ), Rotation = Angle( -2, 90, 0 ), },

	[5] = { "Mesh_static_slow", Vector( 0.0, 0, 0.0 ), Angle( 0, 90, 0 ), "sentry/cvpi_hd/lights/taillight_l", DrawMaterial = "sentry/cvpi_hd/lights/lights_opaque", BoneParent = -1},
	[6] = { "Mesh_static_slow", Vector( 0.0, 0, 0.0 ), Angle( 0, 90, 0 ), "sentry/cvpi_hd/lights/taillight_r", DrawMaterial = "sentry/cvpi_hd/lights/lights_opaque", BoneParent = -1},

	[7] = { "Mesh_static_slow", Vector( 0.0, 0.125, 0.0 ), Angle( 0, 90, 0 ), "sentry/cvpi_hd/lights/fturn_l", DrawMaterial = "sentry/cvpi_hd/lights/lights", BoneParent = -1},
	[8] = { "Mesh_static_slow", Vector( 0.0, 0.125, 0.0 ), Angle( 0, 90, 0 ), "sentry/cvpi_hd/lights/fturn_r", DrawMaterial = "sentry/cvpi_hd/lights/lights", BoneParent = -1},

	[9] = { "Mesh_static_slow", Vector( 0.0, 0.15, 0.0 ), Angle( 0, 90, 0 ), "sentry/cvpi_hd/lights/headlight_l", DrawMaterial = "sentry/cvpi_hd/lights/lights", BloomMaterial = "sentry/cvpi_hd/lights/lights", BoneParent = -1 }, -- Headlight L
	[10] = { "Mesh_static_slow", Vector( 0.0, 0.15, 0.0 ), Angle( 0, 90, 0 ), "sentry/cvpi_hd/lights/headlight_r", DrawMaterial = "sentry/cvpi_hd/lights/lights", BloomMaterial = "sentry/cvpi_hd/lights/lights", BoneParent = -1 }, -- Headlight R

	[11] = { "Mesh_hl_l", Vector( 0.0, 0, 0.0 ), Angle( 0, 90, 0 ), "sentry/cvpi_hd/light_glow", DrawMaterial = "sentry/cvpi_hd/light_glow", BloomMaterial = "sentry/cvpi_hd/light_glow", BoneParent = -1 }, -- Headlight L
	[12] = { "Mesh_hl_r", Vector( 0.0, 0, 0.0 ), Angle( 0, 90, 0 ), "sentry/cvpi_hd/light_glow", DrawMaterial = "sentry/cvpi_hd/light_glow", BloomMaterial = "sentry/cvpi_hd/light_glow", BoneParent = -1 }, -- Headlight R

	[13] = { "Mesh_static_fast", Vector( 0.0, 0, 0.0 ), Angle( 0, 90, 0 ), "sentry/cvpi_hd/lights/turnsig_l", DrawMaterial = "sentry/cvpi_hd/lights/lights_opaque", BoneParent = -1},
	[14] = { "Mesh_static_fast", Vector( 0.0, 0, 0.0 ), Angle( 0, 90, 0 ), "sentry/cvpi_hd/lights/turnsig_r", DrawMaterial = "sentry/cvpi_hd/lights/lights_opaque", BoneParent = -1},

	[15] = { "Mesh_static", Vector( 0.0, -0.05, 0.0 ), Angle( 0, 90, 0 ), "sentry/cvpi_hd/lights/taillight_l", DrawMaterial = "sentry/cvpi_hd/lights/lights_opaque", BoneParent = -1},
	[16] = { "Mesh_static", Vector( 0.0, -0.05, 0.0 ), Angle( 0, 90, 0 ), "sentry/cvpi_hd/lights/taillight_r", DrawMaterial = "sentry/cvpi_hd/lights/lights_opaque", BoneParent = -1},

	[17] = { "Mesh_static_fast", Vector( -75.411 + 0.1, -46.166, 0.0 ), Angle( 0, 180, 90 ), "sentry/cvpi_hd/lights/reverse_l", DrawMaterial = "sentry/cvpi_hd/lights/glow_gradient_a", BloomMaterial = "sentry/cvpi_hd/lights/glow_gradient_a", BoneParent = "trunk"},
	[18] = { "Mesh_static_fast", Vector( -75.411 + 0.1, -46.166, 0.0 ), Angle( 0, 180, 90 ), "sentry/cvpi_hd/lights/reverse_r", DrawMaterial = "sentry/cvpi_hd/lights/glow_gradient_a", BloomMaterial = "sentry/cvpi_hd/lights/glow_gradient_a", BoneParent = "trunk"},

	[19] = { "Projected", Vector( -28.249, 106.045, 29.906 ), Rotation = Angle( 2, 90, 0 ), },
	[20] = { "Projected", Vector( 28.249, 106.045, 29.906 ), Rotation = Angle( -2, 90, 0 ), },

	[21] = { "Light_invis", Vector( -28.266, 104.282, 29.9 ), Angle( 0, 0, 90 ), BoneParent = -1 },
	[22] = { "Light_invis", Vector( 28.266, 104.282, 29.9 ), Angle( 0, 0, 90 ), BoneParent = -1 },

	[23] = { "Mesh_static2", Vector( -75.411 + 0.15, -46.166, 0.0 ), Angle( 0, 180, 90 ), "sentry/cvpi_hd/lights/reverse_l", DrawMaterial = "sentry/cvpi_hd/lights/glow_gradient_a", BloomMaterial = "sentry/cvpi_hd/lights/glow", BoneParent = "trunk"},
	[24] = { "Mesh_static2", Vector( -75.411 + 0.15, -46.166, 0.0 ), Angle( 0, 180, 90 ), "sentry/cvpi_hd/lights/reverse_r", DrawMaterial = "sentry/cvpi_hd/lights/glow_gradient_a", BloomMaterial = "sentry/cvpi_hd/lights/glow", BoneParent = "trunk"},

	[25] = { "Mesh_static_fast", Vector( 0.0, 0, 0.0 ), Angle( 0, 90, 0 ), "sentry/cvpi_hd/lights/brake_c", DrawMaterial = "sentry/cvpi_hd/lights/glow_gradient_a", BloomMaterial = "sentry/cvpi_hd/lights/glow", BoneParent = -1},

	[26] = { "Mesh_static_fast", Vector( -0.1, 0.1, 0.0 ), Angle( 0, 90, 0 ), "sentry/cvpi_hd/lights/marker_l", DrawMaterial = "sentry/cvpi_hd/lights/lights", BoneParent = -1},
	[27] = { "Mesh_static_fast", Vector( 0.1, 0.1, 0.0 ), Angle( 0, 90, 0 ), "sentry/cvpi_hd/lights/marker_r", DrawMaterial = "sentry/cvpi_hd/lights/lights", BoneParent = -1},

	[28] = { "Mesh_static_fast", Vector( -0.1, 0.1, 0.0 ), Angle( 0, 90, 0 ), "sentry/cvpi_hd/lights/marker_l_bulb", DrawMaterial = "sentry/cvpi_hd/lights/lights", BoneParent = -1},
	[29] = { "Mesh_static_fast", Vector( 0.1, 0.1, 0.0 ), Angle( 0, 90, 0 ), "sentry/cvpi_hd/lights/marker_r_bulb", DrawMaterial = "sentry/cvpi_hd/lights/lights", BoneParent = -1},

	[30] = { "Click_off", },
	[31] = { "Click_off", },

	[32] = { "Dials", Indexes = { 6 } },
	[33] = { "Dials2", Indexes = { 1 } },

	[34] = { "Mesh_static_fast", Vector( -75.411 + 0.15, -46.166, 0.0 ), Angle( 0, 180, 90 ), "sentry/cvpi_hd/lights/platelight", DrawMaterial = "sentry/cvpi_hd/lights/glow_gradient_a", BloomMaterial = "sentry/cvpi_hd/lights/glow", BoneParent = "trunk"},
	[35] = { "Dynamic", Vector( 49.8, -7, 0 ), Angle( 0, -180, -90 ), BoneParent = "trunk"},

	[36] = { "Mesh_static2", Vector( 0.0, 0.0, 0.0 ), Angle( 0, 90, 0 ), "sentry/cvpi_hd/lights/taillight_l_glass", DrawMaterial = "sentry/cvpi_hd/lights/lights", BloomMaterial = "sentry/cvpi_hd/lights/lights", BoneParent = -1},
	[37] = { "Mesh_static2", Vector( 0.0, 0.0, 0.0 ), Angle( 0, 90, 0 ), "sentry/cvpi_hd/lights/taillight_r_glass", DrawMaterial = "sentry/cvpi_hd/lights/lights", BloomMaterial = "sentry/cvpi_hd/lights/lights", BoneParent = -1},

	[38] = { "Mesh_static2", Vector( 0.0, 0.0, 0.0 ), Angle( 0, 90, 0 ), "sentry/cvpi_hd/lights/taillight_l_glass", DrawMaterial = "sentry/cvpi_hd/lights/lights", BloomMaterial = "sentry/cvpi_hd/lights/lights", BoneParent = -1},
	[39] = { "Mesh_static2", Vector( 0.0, 0.0, 0.0 ), Angle( 0, 90, 0 ), "sentry/cvpi_hd/lights/taillight_r_glass", DrawMaterial = "sentry/cvpi_hd/lights/lights", BloomMaterial = "sentry/cvpi_hd/lights/lights", BoneParent = -1},

	[40] = { "Light_invis", Vector( -34.606, 102.45, 29.633 ), Angle( 0, 45, 90 ), Scale = 0.2, BoneParent = -1 },
	[41] = { "Light_invis", Vector( 34.606, 102.45, 29.633 ), Angle( 0, -45, 90 ), Scale = 0.2, BoneParent = -1 },

	[42] = { "Turn_on", },
	[43] = { "Turn_off", },

	[44] = { "Turn_arrow", Vector( -23.34, 27.412, 40.136 ), Angle( -150, 0, 180 ), BoneParent = -1 },
	[45] = { "Turn_arrow", Vector( -15.481, 27.475, 40.245 ), Angle( -150, 0, 0 ), BoneParent = -1 },

	[46] = { "Mesh_static", Vector( 0.0, 0.05, -0.05 ), Angle( 0, 90, 0 ), "sentry/cvpi_hd/lights/domelight", DrawMaterial = "sentry/cvpi_hd/lights/glow_gradient_a", BloomMaterial = "sentry/cvpi_hd/lights/glow", BoneParent = -1},
	[47] = {"Dynamic", Vector( 0.0, 3.39, 60.756 ), Angle( 180, 0, 20 ), Brightness = 7, Size = 80, },

	[48] = { "Lights_park", },
	[49] = { "Lights_low", },
	[50] = { "Gear", },
	[51] = { "Turnsig", },
}

COMPONENT.StateMap = "[HL] 49 [ON] 32 33 48 50 51 [~ON] 30 31 42 43 [~SW] 1 2 9 10 17 18 [~W] 3 4 21 22 [~W2] 19 20 [~R] 5 6 13 14 [~PR] 25 36 37 [~PRI] 38 39 [~RI] 15 16 [~A] 7 8 26 27 28 29 40 41 [~DW] 11 12 34 [~BW] 23 24 [W] 35 47 [~SW] 46 [~G] 44 45"

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	["Plate"] = {
		Frames = {
			[1] = "34 35",
		},
		Sequences = {
				ON = {
					1
				},
		}
	},
	["Interior"] = {
		Frames = {
			[1] = "32 33",
		},
		Sequences = {
				ON = {
					1
				},
		}
	},
	["Markers"] = {
		Frames = {
			[0] = "[~OFF] 26 27 28 29 40 41",
			[1] = "28 29 40 41 [~VDA] 26 27",
		},
		Sequences = {
				ON = {
					1
				},
		}
	},
	["LightSwitch"] = {
		Frames = {
			[0] = "[OFF] 48 49",
			[1] = "48",
			[2] = "48 49",
		},
		Sequences = {
				PARKING = {
					1
				},
				HEADLIGHTS = {
					2
				},
		}
	},
	["Headlights"] = {
		Frames = {
			[0] = "[~OFF] 1 2 9 10 3 4 11 12",
			[1] = "3 4 [~SWD] 1 9 2 10 11 12",
			[2] = "[~WD] 3 4 [~SWD2] 1 9 2 10 11 12",
		},
		Sequences = {
				HEADLIGHTS = {
					1
				},
				HEADLIGHTS_DRL = {
					2
				},
		}
	},
	["Headlight_flashers"] = {
		Frames = {
			[0] = "[PASS] 1 2 9 10 11 12 [~OFF] 19 20 21 22 [OFF] 30 31",
			[1] = "1 21 19 9 11 30 [PASS] 2 10 12 31",
			[2] = "2 22 20 10 12 31 [PASS] 1 9 11 30",
			[3] = "1 21 19 9 2 22 20 10 11 12 30 31",
		},
		Sequences = {
			FLASH = sequence()
			:Steady(3,4):Steady(0,3):Steady(3,4):Steady(0,3)
			:Steady(0,9)
			:Steady(3,4):Steady(0,3):Steady(3,4):Steady(0,3)
			:Steady(2,4):Add(0):Steady(1,4):Add(0)
			:Steady(2,4):Add(0):Steady(1,4):Add(0)
			:Steady(2,4):Add(0):Steady(1,4):Add(0)
			:Steady(2,4):Add(0):Steady(1,4):Add(0)
			:Steady(0,8)
			,
			FLASH2 = sequence():Alternate(1,2,10),
		}
	},
	["Taillights"] = {
		Frames = {
			[0] = "[~OFF] 5 6 25 36 37",
			[1] = "5 6 25 36 37",
			[2] = "[~PDR] 36 37 [~DR] 5 6",
		},
		Sequences = {
			BRAKE = {
				1,
			},
			DIM = {
				2,
			}
		}
	},
	["Taillight_flashers"] = {
		Frames = {
			[0] = "[~OFF] 5 6 17 18 36 37",
			[1] = "5 36 6:PASS 37:PASS 17:PASS 18",
			[2] = "5:PASS 36:PASS 6 37 17 18:PASS",
			[3] = "5 36 6 37 17 18",
			[4] = "36 37 [~DR] 5 6",
			[5] = "[PASS] 5 6 17 18 36 37",
			[6] = "5 6 36 37 17:PASS 18:PASS",
			[7] = "5:PASS 6:PASS 17 18",
			[8] = "5 6 36 37 17 18",
		},
		Sequences = {
			FLASH = sequence():Alternate(1,2,5),
			FLASH2 = sequence()
			:Alternate(8,0,3):Do(2):Steady(0,2):Alternate(8,0,3):Do(2):Steady(0,2)
			:Alternate(6,7,3):Do(2):Steady(0,2):Alternate(6,7,3):Do(2):Steady(0,2)
			:Alternate(7,0,3):Do(2):Steady(0,2):Alternate(6,0,3):Do(2):Steady(0,2)
			:Alternate(7,0,3):Do(2):Steady(0,2):Alternate(6,0,3):Do(2):Steady(0,2)
			:Alternate(7,6,3):Do(2):Steady(0,2):Alternate(7,6,3):Do(2):Steady(0,2),
			FLASH3 = sequence():Alternate(6,7,5),
			FLASH4 = sequence():Alternate(7,6,4),
		}
	},
	["Taillight_flashers_strobe"] = {
		Frames = {
			[0] = "[OFF] 15 16 23 24 38 39",
			[1] = "24",
			[2] = "23",
			[3] = "[PASS] 15 16 23 24 38 39",
		},
		Sequences = {
			-- FLASH = { 
			-- 		1, 1, 1, 1, 1, 1,
			-- 		0,
			-- 		2, 2, 2, 2, 2, 2,
			-- 		0,
			-- 	},
			FLASH = sequence():QuadFlash( 1, 2 )
		}
	},
	["Signal_L_DIM"] = {
		Frames = {
			[0] = "[~OFF] 7",
			[1] = "[~DA] 7",
		},
		Sequences = {
			DIM = {
					1,
				},
		}
	},
	["Signal_R_DIM"] = {
		Frames = {
			[0] = "[~OFF] 8",
			[1] = "[~DA] 8",
		},
		Sequences = {
			DIM = {
					1,
				},
		}
	},
	["Signal_L"] = {
		Frames = {
			[0] = "[~OFF] 7 36",
			[1] = "7 5:~R 36 42 43:~OFF 44",
			[2] = "[~DA] 7",
			[3] = "7:PASS 5:~OFF 36:~OFF 42:~OFF 43 44:~OFF_FAST",
		},
		Sequences = {
			SIGNAL = sequence():Alternate(1, 3, 8),
		}
	},
	["Signal_R"] = {
		Frames = {
			[0] = "[~OFF] 8 37:",
			[1] = "8 6:~R 37 42 43:~OFF 45",
			[2] = "[~DA] 8",
			[3] = "8:PASS 6:~OFF 37:~OFF 42:~OFF 43 45:~OFF_FAST",
		},
		Sequences = {
			SIGNAL = sequence():Alternate(1, 3, 8),
		}
	},
	["Reverse"] = {
		Frames = {
			[0] = "[~OFF] 17 18",
			[1] = "17 18",
		},
		Sequences = {
			REVERSE = {
					1,
				},
		}
	},
	["Gear"] = {
		Frames = {
			[1] = "50",
			[2] = "50:PARK",
		},
		Sequences = {
			REVERSE = {
					1,
			},
			PARK = {
					2,
			},
		}
	},
	["Turnsig"] = {
		Frames = {
			[1] = "51:LEFT",
			[2] = "51",
		},
		Sequences = {
			LEFT = {
					1,
			},
			RIGHT = {
					2,
			},
		}
	},
	["Dome"] = {
		Frames = {
			[0] = "[OFF] 46 47",
			[1] = "[SW] 46 [W] 47",
			[2] = "[R] 46 47",
		},
		Sequences = {
			ON = {
				1,
			},
			ON_RED = {
				2,
			},
		}
	},
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE3"] = {
			Headlight_flashers = "FLASH2",
			--Taillight_flashers = "FLASH",
			Taillight_flashers_strobe = "FLASH",
		}
	},
	["Vehicle.Brake"] = {
		["BRAKE"] = {
			Taillights = "BRAKE",
		}
	},
	["Vehicle.Lights"] = {
		["HEADLIGHTS"] = {
			Headlights = "HEADLIGHTS",
			Taillights = "DIM",
			Signal_L_DIM = "DIM",
			Signal_R_DIM = "DIM",
			Markers = "ON",
			Interior = "ON",
			Plate = "ON",
			LightSwitch = "HEADLIGHTS",
		},
		["PARKING"] = {
			Taillights = "DIM",
			Signal_L_DIM = "DIM",
			Signal_R_DIM = "DIM",
			Markers = "ON",
			Interior = "ON",
			Plate = "ON",
			LightSwitch = "PARKING",
		},
	},
	["Vehicle.Signal"] = {
		["LEFT"] = {
			Signal_L = "SIGNAL",
			Turnsig = "LEFT",
		},
		["RIGHT"] = {
			Signal_R = "SIGNAL",
			Turnsig = "RIGHT",
		},
		["HAZARD"] = {
			Signal_L = "SIGNAL",
			Signal_R = "SIGNAL",
		}
	},
	["Vehicle.Transmission"] = {
		["REVERSE"] = {
			Reverse = "REVERSE",
			Gear = "REVERSE",
		},
		["PARK"] = {
			Gear = "PARK",
		},
	},
	["Emergency.Auxiliary"] = {
		["MODE1"] = {
			Dome = "ON",
		},
		["MODE2"] = {
			Dome = "ON_RED",
		},
	},
}