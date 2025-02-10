if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Author = "Schmal"

COMPONENT.Credits = {
	-- Inner modules from RoegonTV
	Model = "RoegonTV, Schmal",
	Code = "Schmal/Mahooter"
}

COMPONENT.Title = [[Federal Signal Legend (45") LRPD]]
COMPONENT.Category = "Lightbar"
COMPONENT.Model = "models/schmal/fedsig_legend_45.mdl"


-- COMPONENT.Deprecated = {
-- 	Description = "New model with body-grouped mounting options and mesh tweaks.",
-- 	Use = "photon_fedsig_legend_45"
-- }

COMPONENT.Preview = {
	Position = Vector(),
	Angles = Angle( 0, 180, 0 ),
	Zoom = 1
}

COMPONENT.Templates = {
	["2D"] = {
		Main = {
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/legend_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/legend_shape.png").MaterialName,
			Width = 6.5,
			Height = 3.25,
			Scale = 1.5
		},
		Narrow = {
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/legend_narrow_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/legend_narrow_shape.png").MaterialName,
			Width = 3.25,
			Height = 3.25,
			Scale = 1
		},
		HotFoot = {
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/visionslr_sm_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/visionslr_sm_shape.png").MaterialName,
			Width = 5.7,
			Height = 5.7/2,
			Scale = 1,
			States = {
				DW = { Inherit = "W", Intensity = 0.4 }
			}
		}
	},
	["Projected"] = {
		TakedownIllumination = {
			Brightness = 2
		},
		AlleyIllumination = {
			Brightness = 1,
			FOV = 45
		}
	}
}

COMPONENT.StateMap = "[R] 23 [B] 1 2 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 25 26 [W] 3 4 13 14 27 28 29 30 31 32 33 [A] 24"

COMPONENT.Elements = {
	[1] = { "Main", Vector( 6.7, 3.85, 0.15 ), Angle( 0, -90, 0 ) },
	[2] = { "Main", Vector( 6.7, -3.85, 0.15 ), Angle( 0, -90, 0 ) },

	[3] = { "Main", Vector( 6.7, 10.6, 0.15 ), Angle( 0, -90, 0 ) },
	[4] = { "Main", Vector( 6.7, -10.6, 0.15 ), Angle( 0, -90, 0 ) },

	[5] = { "Main", Vector( 6.7, 17.4, 0.15 ), Angle( 0, -90, 0 ) },
	[6] = { "Main", Vector( 6.7, -17.4, 0.15 ), Angle( 0, -90, 0 ) },

	[7] = { "Narrow", Vector( 6.49, 22.9, 0.15 ), Angle( 0, -79, 0 ), Width = 2.5 },
	[8] = { "Narrow", Vector( 6.49, -22.9, 0.15 ), Angle( 0, -101, 0 ), Width = 2.5 },

	[9] = { "Narrow", Vector( 5.3, 25.8, 0.15 ), Angle( 0, -56, 0 ), Width = 2.5 },
	[10] = { "Narrow", Vector( 5.3, -25.8, 0.15 ), Angle( 0, -124, 0 ), Width = 2.5 },

	[11] = { "Narrow", Vector( 3.3, 28, 0.15 ), Angle( 0, -28, 0 ), Width = 1.9 },
	[12] = { "Narrow", Vector( 3.3, -28, 0.15 ), Angle( 0, -152, 0 ), Width = 1.9 },

	[13] = { "Narrow", Vector( 0, 28.8, 0.15 ), Angle( 0, 0, 0 ), Width = 2.4 },
	[14] = { "Narrow", Vector( 0, -28.8, 0.15 ), Angle( 0, -180, 0 ), Width = 2.4 },

	[15] = { "Narrow", Vector( -3.3, 28, 0.15 ), Angle( 0, 28, 0 ), Width = 1.9 },
	[16] = { "Narrow", Vector( -3.3, -28, 0.15 ), Angle( 0, 152, 0 ), Width = 1.9 },

	[17] = { "Narrow", Vector( -5.3, 25.8, 0.15 ), Angle( 0, 56, 0 ), Width = 2.5 },
	[18] = { "Narrow", Vector( -5.3, -25.8, 0.15 ), Angle( 0, 124, 0 ), Width = 2.5 },

	[19] = { "Narrow", Vector( -6.49, 22.9, 0.15 ), Angle( 0, 79, 0 ), Width = 2.5 },
	[20] = { "Narrow", Vector( -6.49, -22.9, 0.15 ), Angle( 0, 101, 0 ), Width = 2.5 },

	[21] = { "Main", Vector( -6.7, 17.4, 0.15 ), Angle( 0, 90, 0 ) },
	[22] = { "Main", Vector( -6.7, -17.4, 0.15 ), Angle( 0, 90, 0 ) },

	[23] = { "Main", Vector( -6.7, 10.6, 0.15 ), Angle( 0, 90, 0 ) },
	[24] = { "Main", Vector( -6.7, -10.6, 0.15 ), Angle( 0, 90, 0 ) },

	[25] = { "Main", Vector( -6.7, 3.85, 0.15 ), Angle( 0, 90, 0 ) },
	[26] = { "Main", Vector( -6.7, -3.85, 0.15 ), Angle( 0, 90, 0 ) },

	[27] = { "HotFoot", Vector( 7.2, 28, -2.4 ), Angle( 0, -90, 0 ) },
	[28] = { "HotFoot", Vector( 7.2, -28, -2.4 ), Angle( 0, -90, 0 ) },

	[29] = { "HotFoot", Vector( -4.5, 31, -2.4 ), Angle( 0, -10, 0 ) },
	[30] = { "HotFoot", Vector( -4.5, -31, -2.4 ), Angle( 0, 190, 0 ) },

	[31] = { "TakedownIllumination", Vector( 6.7, 0, 0.15 ), Angle( 0, -90, 0 ) },

	[32] = { "AlleyIllumination", Vector( 0, 28.8, 0.15 ), Angle( 15, 0, 0 ) },
	[33] = { "AlleyIllumination", Vector( 0, -28.8, 0.155 ), Angle( 15, -180, 0 ) },
}

COMPONENT.ElementGroups = {
	["#A"] = { 1, 2, 25, 26 },
	["#B"] = { 3, 4, 23, 24 },
	["#C"] = { 5, 6, 21, 22 },
	["#D"] = { 7, 9, 11, 15, 17, 19, 8, 10, 12, 16, 18, 20 },
}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.ElementStates = {
	["2D"] = {
		["~OFF"] = {
			Intensity = 0,
			IntensityTransitions = true,
			IntensityGainFactor = 9,
			IntensityLossFactor = 12,
		},
	},
}

COMPONENT.Segments = {
	Main_F_M1 = {
		FrameDuration = 1/30,
		Frames = {
			[1] = "1:B 2:B",
			[2] = "1:B 2:B 3:W 4:W",
			[3] = "1:B 2:B 3:W 4:W 5:B 6:B",
			[4] = "1:B 2:B 3:W 4:W 5:B 6:B 7:B 8:B 9:B 10:B 11:B 12:B",
			[5] = "3:W 4:W 5:B 6:B 7:B 8:B 9:B 10:B 11:B 12:B",
			[6] = "5:B 6:B 7:B 8:B 9:B 10:B 11:B 12:B",
			[7] = "7:B 8:B 9:B 10:B 11:B 12:B",
		},
		Sequences = {
			["ON"] = {
				1,1,2,2,3,3,4,4,5,5,6,6,7,7,0,0,7,7,6,6,5,5,4,4,3,3,2,2,1,1
			},
		}
	},
	Main_F_M2 = {
		FrameDuration = 1/30,
		Frames = {
			[1] = "8:B 10:B 12:B",
			[2] = "6:B 8:B 10:B 12:B",
			[3] = "4:B 6:B 8:B 10:B 12:B",
			[4] = "2:B 4:W 6:B 8:B 10:B 12:B",
			[5] = "2:B 4:W 6:B",
			[6] = "2:B 4:W",
			[7] = "2:B",
			[8] = "7:B 9:B 11:B",
			[9] = "5:B 7:B 9:B 11:B",
			[10] = "3:B 5:B 7:B 9:B 11:B",
			[11] = "1:B 3:W 5:B 7:B 9:B 11:B",
			[12] = "1:B 3:W 5:B",
			[13] = "1:B 3:W",
			[14] = "1:B",
		},
		Sequences = {
			["ON"] = {
				1,2,3,4,4,4,4,5,6,7,0,8,9,10,11,11,11,11,12,13,14
			},
		}
	},
	Main_M3_Inner = {
		FrameDuration = 1/30,
		Frames = {
			[0] = "[~OFF] 1 2 3 4 25 26 23 24",
			[1] = "[OFF] 1 2 3 4 25 26 23 24",
			[2] = "1 2 25 26", --outer
			[3] = "3 4 23 24", --middle
			[4] = "1 2 3 4 25 26 23 24", --all
			[5] = "1 2 25 26", --outer
			[6] = "3 4 23 24", --middle
			[7] = "1 2 3 4 25 26 23 24", --all
		},
		Sequences = {
			ON = {
				5,5,
				0,
				3,3,3,3,
				0,0,
				6,
				4,
				2,2,
				4,
				3,3,
				0,
				5,5,
				1,1,
			 },
		},
	},
	Main_R_M1 = {
		FrameDuration = 1/30,
		Frames = {
			[1] = "25:B 26:B",
			[2] = "25:B 26:B 23:R 24:A",
			[3] = "25:B 26:B 23:R 24:A 21:B 22:B",
			[4] = "25:B 26:B 23:R 24:A 21:B 22:B 19:B 20:B 17:B 18:B 15:B 16:B",
			[5] = "23:R 24:A 21:B 22:B 19:B 20:B 17:B 18:B 15:B 16:B",
			[6] = "21:B 22:B 19:B 20:B 17:B 18:B 15:B 16:B",
			[7] = "19:B 20:B 17:B 18:B 15:B 16:B",
		},
		Sequences = {
			["ON"] = {
				1,1,2,2,3,3,4,4,5,5,6,6,7,7,0,0,7,7,6,6,5,5,4,4,3,3,2,2,1,1
			},
		}
	},
	Main_R_M2 = {
		FrameDuration = 1/30,
		Frames = {
			[1] = "16:B 18:B 20:B",
			[2] = "22:B 16:B 18:B 20:B",
			[3] = "24:A 22:B 16:B 18:B 20:B",
			[4] = "26:B 24:A 22:B 16:B 18:B 20:B",
			[5] = "26:B 24:A 22:B",
			[6] = "26:B 24:A",
			[7] = "26:B",
			[8] = "19:B 17:B 15:B",
			[9] = "21:B 19:B 17:B 15:B",
			[10] = "23:R 21:B 19:B 17:B 15:B",
			[11] = "25:B 23:R 21:B 19:B 17:B 15:B",
			[12] = "25:B 23:R 21:B",
			[13] = "25:B 23:R",
			[14] = "25:B",
		},
		Sequences = {
			["ON"] = {
				1,2,3,4,4,4,4,5,6,7,0,8,9,10,11,11,11,11,12,13,14
			},
		}
	},
	Main_M3_Outer = {
		FrameDuration = 1/20,
		Frames = {
			[1] = "5:B 6:B",
			[2] = "7:B 8:B 9:B 10:B",
			[3] = "11:B 12:B 15:B 16:B",
			[4] = "17:B 18:B 19:B 20:B",
			[5] = "21:B 22:B",
		},
		Sequences = {
			["ON"] = {
				1,2,3,4,5,0,5,4,3,2,1
			},
		}
	},
	SignalMaster = {
		Frames = {
			[1] = "21",
			[2] = "21 23:A",
			[3] = "21 23:A 25:A",
			[4] = "21 23:A 25:A 26:A",
			[5] = "21 23:A 25:A 26:A 24:A",
			[6] = "21 23:A 25:A 26:A 24:A 22",
			[7] = "22",
			[8] = "24:A 22",
			[9] = "26:A 24:A 22",
			[10] = "25:A 26:A 24:A 22",
			[11] = "23:A 25:A 26:A 24:A 22",
			[12] = "21 23:A 25:A 26:A 24:A 22",
			[13] = "25:A 26:A",
			[14] = "23:A 25:A 26:A 24:A",
			[15] = "21 23:A 25:A 26:A 24:A 22",
		},
		Sequences = {
			["RIGHT"] = sequence():Add( 0 ):Sequential( 1, 6 ):StretchAll( 3 ):Hold( 8 ),
			["LEFT"] = sequence():Add( 0 ):Sequential( 7, 12 ):StretchAll( 3 ):Hold( 8 ),
			["CENOUT"] = sequence():Add( 0 ):Sequential( 13, 15 ):StretchAll( 5 ):Hold( 8 )
		}
	},
	SceneLeft = {
		Frames = {
			[1] = "13 29 32",
		},
		Sequences = {
			["ON"] = { 1 },
		}
	},
	SceneRight = {
		Frames = {
			[1] = "14 30 33",
		},
		Sequences = {
			["ON"] = { 1 },
		}
	},
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = {
			Main_F_M1 = "ON",
			Main_R_M1 = "ON",
		},
		["MODE2"] = {
			Main_F_M2 = "ON",
			Main_R_M2 = "ON",
		},
		["MODE3"] = {
			Main_M3_Inner = "ON",
			Main_M3_Outer = "ON",
		},
	},
	["Emergency.Directional"] = {
		["LEFT"] = { SignalMaster = "LEFT" },
		["RIGHT"] = { SignalMaster = "RIGHT" },
		["CENOUT"] = { SignalMaster = "CENOUT" },
	},
	["Emergency.SceneLeft"] = {
		["ON"] = { SceneLeft = "ON" }
	},
	["Emergency.SceneRight"] = {
		["ON"] = { SceneRight = "ON" }
	}
}