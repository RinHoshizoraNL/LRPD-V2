if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()
local sequence = Photon2.SequenceBuilder.New

COMPONENT.Author = "Photon"

COMPONENT.Credits = {
	Model = "Twurtleee, Schmal",
	Code = "Schmal"
}

COMPONENT.Title = [[Federal Signal Valor (44") LRPD]]
COMPONENT.Category = "Lightbar"
COMPONENT.Model = "models/schmal/fedsig_valor_44.mdl"

COMPONENT.Preview = {
	Position = Vector( 0, 0, -0.5 ),
	Angles = Angle( 0, 180, 0 ),
	Zoom = 1.2
}

-- Prototype of component options
COMPONENT.DefineOptions = {
	-- Unique option name
	Feet = {
		-- Annotations of the function arguments (for possible validation and UI integration later)
		Arguments = { [1] = { "amount", "number" } },
		-- What the option does
		Description = "Adjusts the feet extension height.",
		-- The action performed, which will probably be a function but macros may come later
		Action = function( self, height )
			local scale = self.Scale or 1
			self.Bones = self.Bones or {}
			self.Bones["valor_44_feet_left"] = { Vector( height/-4.2857, 0, height ) * scale, Angle( 0, 0, 0 ), 1 }
			self.Bones["valor_44_feet_right"] = { Vector( height/4.2857, 0, height ) * scale, Angle( 0, 0, 0 ), 1 }
		end
	},
	ForwardHotFeet = {
		Arguments = { [1] = { "enabled", "boolean" } },
		Description = "Enable or disable the forward hotfeet.",
		Action = function( self, enabled )
			self.BodyGroups = self.BodyGroups or {}
			self.BodyGroups["forward_hotfeet"] = enabled and 0 or 1
		end
	},
	AlleyHotFeet = {
		Arguments = { [1] = { "enabled", "boolean" } },
		Description = "Enable or disable the alley hotfeet.",
		Action = function( self, enabled )
			self.BodyGroups = self.BodyGroups or {}
			self.BodyGroups["alley_hotfeet"] = enabled and 0 or 1
		end
	},
}

COMPONENT.Templates = {
	["2D"] = {
		Primary = {
			Width 		= 6.2,
			Height		= 3.3,
			Detail 		= PhotonMaterial.GenerateLightQuad("photon/lights/fs_valor_detail.png").MaterialName,
			Shape 		= PhotonMaterial.GenerateLightQuad("photon/lights/fs_valor_shape.png").MaterialName,
			Scale 		= 1.2,
			Ratio 		= 2,
			VisibilityRadius = 0.5,
			IntensityGainFactor = 3,
			IntensityLossFactor = 3,
		},
		HotFoot = {
			-- Detail = PhotonMaterial.GenerateLightQuad("photon/lights/visionslr_sm_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/visionslr_sm_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/visionslr_sm_shape.png").MaterialName,
			Width = 5,
			Height = 5/2,
			Scale = 1,
			States = {
				DW = { Inherit = "W", Intensity = 0.4 }
			},
			-- RequiredBodyGroups = {
				-- Requires HotFeet body-group
				-- [2] = 0
			-- }
		}
	},
	["Projected"] = {
		TakedownIllumination = {
			Material = "photon/flashlight/led_linear.png",
			Brightness = 1.5,
			FOV = 45
		},
		FloodIllumination = {
			Material = "photon/flashlight/led_linear.png",
			Brightness = 4
		},
	}
}

COMPONENT.Elements = {
	[1] = { "Primary", Vector( 10.3, 2.5, 1.2 ), Angle( 0, -53, 0 ), Width = 7.7 },
	[2] = { "Primary", Vector( 10.3, -2.5, 1.2 ), Angle( 0, 180 + 53, 0 ), Width = 7.7 },

	[3] = { "Primary", Vector( 6.91, 7.01, 1.2 ), Angle( 0, -53, 0 ) },
	[4] = { "Primary", Vector( 6.91, -7.01, 1.2 ), Angle( 0, 180 + 53, 0 ) },

	[5] = { "Primary", Vector( 3.9, 11, 1.2 ), Angle( 0, -53, 0 ) },
	[6] = { "Primary", Vector( 3.9, -11, 1.2 ), Angle( 0, 180 + 53, 0 ) },

	[7] = { "Primary", Vector( 0.87, 14.99, 1.2 ), Angle( 0, -53, 0 ) },
	[8] = { "Primary", Vector( 0.87, -14.99, 1.2 ), Angle( 0, 180 + 53, 0 ) },

	[9] = { "Primary", Vector( -0.64, 19.5, 1.2 ), Angle( 0, -90, 0 ), Width = 6.4 },
	[10] = { "Primary", Vector( -0.64, -19.5, 1.2 ), Angle( 0, -90, 0 ), Width = 6.4  },

	[11] = { "Primary", Vector( -2.39, 24.1, 1.2 ), Angle( 0, -48, 0 ), Width = 6.8 },
	[12] = { "Primary", Vector( -2.39, -24.1, 1.2 ), Angle( 0, 180 + 48, 0 ), Width = 6.8  },

	[13] = { "Primary", Vector( -7.06, 26.7, 1.2 ), Angle( 0, -11, 0 ), Width = 7.15 },
	[14] = { "Primary", Vector( -7.06, -26.7, 1.2 ), Angle( 0, 180 + 11, 0 ), Width = 7.15  },

	[15] = { "Primary", Vector( -11.86, 23.54, 1.2 ), Angle( 0, 90, 0 ), Width = 6.2 },
	[16] = { "Primary", Vector( -11.86, -23.54, 1.2 ), Angle( 0, 90, 0 ), Width = 6.2  },

	[17] = { "Primary", Vector( -11.86, 18.28, 1.2 ), Angle( 0, 90, 0 ), Width = 6.2 },
	[18] = { "Primary", Vector( -11.86, -18.28, 1.2 ), Angle( 0, 90, 0 ), Width = 6.2  },

	[19] = { "Primary", Vector( -11.86, 13.07, 1.2 ), Angle( 0, 90, 0 ), Width = 6.2 },
	[20] = { "Primary", Vector( -11.86, -13.07, 1.2 ), Angle( 0, 90, 0 ), Width = 6.2  },
	
	[21] = { "Primary", Vector( -11.86, 7.83, 1.2 ), Angle( 0, 90, 0 ), Width = 6.2 },
	[22] = { "Primary", Vector( -11.86, -7.83, 1.2 ), Angle( 0, 90, 0 ), Width = 6.2  },
	
	[23] = { "Primary", Vector( -11.86, 2.61, 1.2 ), Angle( 0, 90, 0 ), Width = 6.2 },
	[24] = { "Primary", Vector( -11.86, -2.61, 1.2 ), Angle( 0, 90, 0 ), Width = 6.2  },

	[25] = { "HotFoot", Vector( 0, -1.6, 0 ), Angle( 0, 180, 0 ), BoneParent = "valor_44_hootfoot_fwd_left", RequiredBodyGroups = { ["forward_hotfeet"] = 0 } },
	[26] = { "HotFoot", Vector( 0, -1.6, 0 ), Angle( 0, 180, 0 ), BoneParent = "valor_44_hootfoot_fwd_right", RequiredBodyGroups = { ["forward_hotfeet"] = 0 } },

	[27] = { "HotFoot", Vector( 1.62, -0.1, -.35 ), Angle( 0, -95.4, 0 ), BoneParent = "valor_44_hootfoot_alley_left", Width = 4.7, RequiredBodyGroups = { ["alley_hotfeet"] = 0 } },
	[28] = { "HotFoot", Vector( 1.62, -0.1, -.35 ), Angle( 0, -95.4, 0 ), BoneParent = "valor_44_hootfoot_alley_right", Width = 4.7, RequiredBodyGroups = { ["alley_hotfeet"] = 0 } },

	[29] = { "TakedownIllumination",  Vector( -0.64, 19.5, 1.2 ), Angle( 0, -90, 0 ) },
	[30] = { "TakedownIllumination",  Vector( -0.64, -19.5, 1.2 ), Angle( 0, -90, 0 ) },

	[31] = { "TakedownIllumination", Vector( -7.06, 26.7, 1.2 ), Angle( 0, -11, 0 ) },
	[32] = { "TakedownIllumination", Vector( -7.06, -26.7, 1.2 ), Angle( 0, 180 + 11, 0 ) },

	[33] = { "FloodIllumination", Vector( 10, 0, 1.2 ), Angle( 0, -90, 0 ), FOV = 90, Brightness = 1.5, Material = "photon/flashlight/wide.png" }
	
}

COMPONENT.StateMap = "[R] 1 3 5 7 9 11 13 15 17 19 21 23 25 27 [B] 2 4 6 8 10 12 14 16 18 20 22 24 26 28 [W] 29 30 31 32 33"

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	All = {
		Frames = {
			[1] = "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28",
			[2] = "1 3 5 7 9 11 13 15 17 19 21 23 25 27",
			[3] = "2 4 6 8 10 12 14 16 18 20 22 24 26 28",
			[4] = "1 5 9 13 17 21 24 20 16 12 8 4",
			[5] = "2 6 10 14 18 22 23 19 15 11 7 3"
			
		},
		Sequences = {
			["ON"] = { 1 },
			["TRI_FLASH"] = sequence():TripleFlash( 2, 3 ),
			["QUAD_FLASH"] = sequence():QuadFlash( 2, 3 ),
			["ALT"] = sequence():Alternate( 2, 3 ):SetTiming( 1 ),
			["MIX"] = sequence():FlashHold( { 4, 5 }, 2, 3 )
		}
	},
	["Main_F_DVI"] = {
		Frames = {
			[0] = "[~B*0.5] 1 2 5 6 9 10 13 14 11 12 [~W*0.45] 3 4 7 8",
			[1] = "1:~B 2:~B",
			[2] = "3:~W 4:~W",
			[3] = "5:~B 6:~B",
			[4] = "7:~W 8:~W",
			[5] = "9:~B 10:~B",
			[6] = "11:~B 12:~B",
			[7] = "13:~B 14:~B",
		},
		Sequences = {
			["ON"] = sequence():Sequential(7, 1):Stretch(3)
		}
	},
	["Main_F_DVI2"] = {
		Frames = {
			[0] = "[PASS] 1 2 5 6 9 10 13 14 3 4 7 8 11 12",
			[1] = "1:~B 2:~B",
			[2] = "3:~W 4:~W",
			[3] = "5:~B 6:~B",
			[4] = "7:~W 8:~W",
			[5] = "9:~B 10:~B",
			[6] = "11:~B 12:~B",
			[7] = "13:~B 14:~B",
		},
		Sequences = {
			["ON"] = sequence():Sequential(7, 1):Stretch(3)
		}
	},
	["Main_R_DVI"] = {
		Frames = {
			[0] = "[~B*0.5] 15 16 17 18 23 24 [~R*0.5] 19 21 [~A*0.5] 22 20",
			[1] = "[~B] 23 24 15 16",
			[2] = "[~A] 22 [~R] 21",
			[3] = "[~A] 20 [~R] 19",
			[4] = "[~B] 17 18",
		},
		Sequences = {
			["ON"] = sequence():Sequential(1, 4):Stretch(5)
		}
	},
	["Main_F_M2"] = {
		Frames = {
			[1] = "[B] 1 2 5 6 9 10 11 12 13 14 [W] 3 4 7 8",
			[2] = "[B] 5 6 9 10 11 12 13 14 [W] 3 4 7 8",
			[3] = "[B] 5 6 9 10 11 12 13 14 [W] 7 8",
			[4] = "[B] 9 10 11 12 13 14 [W] 7 8",
			[5] = "[B] 9 10 11 12 13 14",
			[6] = "[B] 11 12 13 14",
			[7] = "[B] 13 14",
		},
		Sequences = {
			["ON"] = {
				1,1,2,2,3,3,4,4,5,5,6,6,7,7,6,6,5,5,4,4,3,3,2,2,1,1,0,0,1,1,0,0,1,1,0,0,
			},
		}
	},
	["Main_R_M2"] = {
		Frames = {
			[1] = "[B] 23 24 17 18 15 16 [R] 21 19 [A] 22 20",
			[2] = "[B] 17 18 15 16 [R] 21 19 [A] 22 20",
			[3] = "[B] 17 18 15 16 [R] 19 [A] 20",
			[4] = "[B] 17 18 15 16",
			[5] = "[B] 15 16",
		},
		Sequences = {
			["ON"] = {
				1,1,1,2,2,2,3,3,3,4,4,4,5,5,5,4,4,4,3,3,3,2,2,2,1,1,0,0,1,1,0,0,1,1,0,0,
			},
		}
	},
	-- ["Main_F_M3"] = {
	-- 	Frames = {
	-- 		[1] = "[B] 1 2 5 6 9 10 11 12 13 14 [W] 3 4 7 8",
	-- 		[2] = "[B] 1 2 5 6 [W] 3 4 7 8",
	-- 		[3] = "[B] 9 10 11 12 13 14",
	-- 		[4] = "[B] 1 5 9 11 13 [W] 3 7",
	-- 		[5] = "[B] 2 6 10 12 14 [W] 4 8",
	-- 	},
	-- 	Sequences = {
	-- 		["ON"] = {
	-- 			1,1,0,0,
	-- 			1,1,0,0,
	-- 			1,1,0,0,
	-- 			1,1,0,0,
	-- 			3,3,2,2,
	-- 			3,3,2,2,
	-- 			3,3,2,2,
	-- 			3,3,2,2,
	-- 			1,1,0,0,
	-- 			1,1,0,0,
	-- 			1,1,0,0,
	-- 			1,1,0,0,
	-- 			4,4,0,0,4,4,0,0,
	-- 			5,5,0,0,5,5,0,0,
	-- 			4,4,0,0,4,4,0,0,
	-- 			5,5,0,0,5,5,0,0,


	-- 		},
	-- 	}
	-- },
	["Main_F_M3_Inner"] = {
		Frames = {
			[1] = "[W] 7 8",
			[2] = "[B] 6 5 [R] 19 [A] 20",
			[3] = "[W] 4 3 [R] 21 [A] 22",
			[4] = "[B] 2 1 23 24",
		},
		Sequences = {
			["ON"] = {
				1,2,3,4,3,2,1
			},
		}
	},
	["Main_F_M3_Outer"] = {
		Frames = {
			[1] = "[B] 9 11 13 15 17",
			[2] = "[B] 10 12 14 18 16",
		},
		Sequences = {
			["ON"] = sequence():TripleFlash(1, 2)
		}
	},
	["TA"] = {
		FrameDuration = 1/30,
		Frames = {
			[1] = "[B] 23 24", --CENOUT
			[2] = "[B] 23 24 [R] 21 [A] 22",
			[3] = "[B] 23 24 [R] 21 19 [A] 22 20",
			[4] = "[B] 23 24 18 17 [R] 21 19 [A] 22 20",

			[5] = "[B] 17", --RIGHT
			[6] = "[B] 17 [R] 19",
			[7] = "[B] 17 [R] 19 21",
			[8] = "[B] 17 23 [R] 19 21",
			[9] = "[B] 17 23 24 [R] 19 21",
			[10] = "[B] 17 23 24 [R] 19 21 [A] 22",
			[11] = "[B] 17 23 24 [R] 19 21 [A] 22 20",
			[12] = "[B] 17 23 24 18 [R] 19 21 [A] 22 20",

			[13] = "[B] 18", --LEFT
			[14] = "[B] 18 [A] 20",
			[15] = "[B] 18 [A] 20 22",
			[16] = "[B] 18 24 [A] 20 22",
			[17] = "[B] 18 24 23 [A] 20 22",
			[18] = "[B] 18 24 23 [A] 20 22 [R] 21",
			[19] = "[B] 18 24 23 [A] 20 22 [R] 21 19",
			[20] = "[B] 18 24 23 17 [A] 20 22 [R] 21 19",

		},
		Sequences = {
			["CENOUT"] = {
				1,1,0,1,1,0,1,1,0,
				2,2,0,2,2,0,2,2,0,
				3,3,0,3,3,0,3,3,0,
				4,4,4,4,4,4,4,4,4,4,4,4,
			},
			["RIGHT"] = {
				5,5,0,5,5,0,5,5,0,
				6,6,0,6,6,0,6,6,0,
				7,7,0,7,7,0,7,7,0,
				8,8,0,8,8,0,8,8,0,
				9,9,0,9,9,0,9,9,0,
				10,10,0,10,10,0,10,10,0,
				11,11,0,11,11,0,11,11,0,
				12,12,12,12,12,12,12,12,12,12,12,12,
			},
			["LEFT"] = {
				13,13,0,13,13,0,13,13,0,
				14,14,0,14,14,0,14,14,0,
				15,15,0,15,15,0,15,15,0,
				16,16,0,16,16,0,16,16,0,
				17,17,0,17,17,0,17,17,0,
				18,18,0,18,18,0,18,18,0,
				19,19,0,19,19,0,19,19,0,
				20,20,20,20,20,20,20,20,20,20,20,20,
			},
		}
	},
	["LeftAlley"] = {
		Frames = {
			[1] = "[W] 11 13 31"
		},
		Sequences = {
			["ON"] = { 1 }
		}
	},
	["RightAlley"] = {
		Frames = {
			[1] = "[W] 12 14 32"
		},
		Sequences = {
			["ON"] = { 1 }
		}
	},
	["Marker"] = {
		Frames = {
			[1] = "9 10 11 12 13 14 15 16",
		},
		Sequences = {
			["ON"] = { 1 },
		}
	},
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = {
			Main_F_DVI = "ON",
			Main_F_DVI2 = "ON:180",
			Main_R_DVI = "ON",
		},
		["MODE2"] = {
			Main_F_M2 = "ON",
			Main_R_M2 = "ON",
		},
		["MODE3"] = {
			Main_F_M3_Inner = "ON",
			Main_F_M3_Outer = "ON",
		}
	},
	["Emergency.SceneLeft"] = {
		["ON"] = { LeftAlley = "ON" }
	},
	["Emergency.SceneRight"] = {
		["ON"] = { RightAlley = "ON" }
	},
	["Emergency.Directional"] = {
		["LEFT"] = {
			TA = "LEFT",
		},
		["RIGHT"] = {
			TA = "RIGHT",
		},
		["CENOUT"] = {
			TA = "CENOUT",
		},
	},
}

COMPONENT.Options = {
	-- Test = "ON"
}