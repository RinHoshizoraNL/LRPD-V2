if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()
local sequence = Photon2.SequenceBuilder.New

COMPONENT.Author = "Photon"

COMPONENT.Credits = {
	Model = "Twurtleee, Schmal",
	Code = "Schmal"
}

COMPONENT.Title = [[Federal Signal Valor (51") LRPD]]
COMPONENT.Category = "Lightbar"
COMPONENT.Model = "models/schmal/fedsig_valor_51.mdl"

COMPONENT.Preview = {
	Position = Vector( 0, 0, -0.5 ),
	Angles = Angle( 0, 180, 0 ),
	Zoom = 1.2
}

COMPONENT.States = {
	[1] = "R",
	[2] = "B",
	[3] = "W",
	[4] = "A",
	[5] = "A",
}

COMPONENT.Templates = {
	["2D"] = {
		Primary = {
			Width 		= 5.9,
			Height		= 3.3,
			-- Detail 		= PhotonMaterial.GenerateLightQuad("photon/lights/fs_valor_shape.png").MaterialName,
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
	}
}


-- function move( vector, angle, distance )
--     local radians = math.rad( angle )
--     local newX = vector.x + math.cos( radians ) * distance
--     local newY = vector.y + math.sin( radians ) * distance
-- 	local result = Vector( newX, newY, vector.z )
--     print( tostring( result ) )
-- 	return result
-- end

local ang = 51.1

COMPONENT.ElementGroups = {
	["Group"] = { 1, 2, 3, 4 },
	["ODD"] = { 1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27 },
	["EVEN"] = { 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28 },
	["FR_ODD"] = { 1, 3, 5, 7, 9, 11, 13, 15 },
	["FR_EVEN"] = { 2, 4, 6, 8, 10, 12, 14, 16 },
	["OuterL"] = { 11, 13, 15, 17 },
	["OuterR"] = { 12, 14, 16, 18 },
}


COMPONENT.Elements = {
	[1] = { "Primary", Vector( 10.39, 2.37, 1.15 ), Angle( 0, -ang, 0 ), Width = 7.6 },
	[2] = { "Primary", Vector( 10.39, -2.37, 1.15 ), Angle( 0, 180 + ang, 0 ), Width = 7.6 },
	
	[3] = { "Primary", Vector( 6.968, 6.611, 1.15 ), Angle( 0, -ang, 0 ), Width = 6 },
	[4] = { "Primary", Vector( 6.968, -6.611, 1.15 ), Angle( 0, 180 + ang, 0 ), Width = 6 },
	
	[5] = { "Primary", Vector( 3.922, 10.386, 1.15 ), Angle( 0, -ang, 0 ) },
	[6] = { "Primary", Vector( 3.922, -10.386, 1.15 ), Angle( 0, 180 + ang, 0 ) },

	[7] = { "Primary", Vector( 0.87, 14.168, 1.15 ), Angle( 0, -ang, 0 ) },
	[8] = { "Primary", Vector( 0.87, -14.168, 1.15 ), Angle( 0, 180 + ang, 0 ) },

	[9] = { "Primary", Vector( -0.65, 18.45, 1.15 ), Angle( 0, -90, 0 ), Width = 6 },
	[10] = { "Primary", Vector( -0.65, -18.45, 1.15 ), Angle( 0, -90, 0 ), Width = 6 },
	
	[11] = { "Primary", Vector( -0.65, 23.4, 1.15 ), Angle( 0, -90, 0 ), Width = 6 },
	[12] = { "Primary", Vector( -0.65, -23.4, 1.15 ), Angle( 0, -90, 0 ), Width = 6 },

	[13] = { "Primary", Vector( -2.45, 27.75, 1.15 ), Angle( 0, -46, 0 ), Width = 6.6 },
	[14] = { "Primary", Vector( -2.45, -27.75, 1.15 ), Angle( 0, 180 + 46, 0 ), Width = 6.6 },

	[15] = { "Primary", Vector( -7.14, 30.18, 1.15 ), Angle( 0, -10, 0 ), Width = 7.2 },
	[16] = { "Primary", Vector( -7.14, -30.18, 1.15 ), Angle( 0, 180 + 10, 0 ), Width = 7.2 },

	[17] = { "Primary", Vector( -11.98, 27.22, 1.15 ), Angle( 0, 90, 0 ), Width = 6 },
	[18] = { "Primary", Vector( -11.98, -27.22, 1.15 ), Angle( 0, 90, 0 ), Width = 6 },

	[19] = { "Primary", Vector( -11.98, 22.25, 1.15 ), Angle( 0, 90, 0 ), Width = 6 },
	[20] = { "Primary", Vector( -11.98, -22.25, 1.15 ), Angle( 0, 90, 0 ), Width = 6 },

	[21] = { "Primary", Vector( -11.98, 17.3, 1.15 ), Angle( 0, 90, 0 ), Width = 6 },
	[22] = { "Primary", Vector( -11.98, -17.3, 1.15 ), Angle( 0, 90, 0 ), Width = 6 },

	[23] = { "Primary", Vector( -11.98, 12.39, 1.15 ), Angle( 0, 90, 0 ), Width = 6 },
	[24] = { "Primary", Vector( -11.98, -12.39, 1.15 ), Angle( 0, 90, 0 ), Width = 6 },

	[25] = { "Primary", Vector( -11.98, 7.41, 1.15 ), Angle( 0, 90, 0 ), Width = 6 },
	[26] = { "Primary", Vector( -11.98, -7.41, 1.15 ), Angle( 0, 90, 0 ), Width = 6 },

	[27] = { "Primary", Vector( -11.98, 2.45, 1.15 ), Angle( 0, 90, 0 ), Width = 6 },
	[28] = { "Primary", Vector( -11.98, -2.45, 1.15 ), Angle( 0, 90, 0 ), Width = 6 },

	-- yes... the bones are erroneously named hootfoot instead of hotfoot. It took me a very long time to realize why shit wasn't working because of it.
	[29] = { "HotFoot", Vector( 0, -1.6, 0 ), Angle( 0, 180, 0 ), BoneParent = "valor_51_hootfoot_fwd_left", RequiredBodyGroups = { ["forward_hotfeet"] = 0 }  },
	[30] = { "HotFoot", Vector( 0, -1.6, 0 ), Angle( 0, 180, 0 ), BoneParent = "valor_51_hootfoot_fwd_right", RequiredBodyGroups = { ["forward_hotfeet"] = 0 }  },

	[31] = { "HotFoot", Vector( 1.62, -0.1, -.35 ), Angle( 0, -95.4, 0 ), BoneParent = "valor_51_hootfoot_alley_left", Width = 4.7, RequiredBodyGroups = { ["alley_hotfeet"] = 0 } },
	[32] = { "HotFoot", Vector( 1.62, -0.1, -.35 ), Angle( 0, -95.4, 0 ), BoneParent = "valor_51_hootfoot_alley_right", Width = 4.7, RequiredBodyGroups = { ["alley_hotfeet"] = 0 }  },

	-- [3] Vector( 6.968, 6.611, 1.15 ) w=6.2
	-- [5] Vector( 3.922, 10.386, 1.15 ) w=5.9
	-- [7] Vector( 0.87, 14.168, 1.15 ) w=5.9
	-- [3] = { "Primary", move( Vector( 10.39, 2.37, 1.15 ), -ang, -15.16 ), Angle( 0, -ang, 0 ), Width = 5.9 },
}

COMPONENT.StateMap = "[R] 1 3 5 7 9 11 13 15 17 19 21 23 25 27 29 31 [B] 2 4 6 8 10 12 14 16 18 20 22 24 26 28 30 32"

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	["Main_F_DVI"] = {
		Frames = {
			[0] = "[~B*0.5] 1 2 5 6 9 10 13 14 11 12 15 16 [~W*0.45] 3 4 7 8",
			[1] = "1:~B 2:~B",
			[2] = "3:~W 4:~W",
			[3] = "5:~B 6:~B",
			[4] = "7:~W 8:~W",
			[5] = "9:~B 10:~B",
			[6] = "11:~B 12:~B",
			[7] = "13:~B 14:~B",
			[8] = "15:~B 16:~B",
		},
		Sequences = {
			["ON"] = sequence():Sequential(8, 1):Stretch(3)
		}
	},
	["Main_F_DVI2"] = {
		Frames = {
			[0] = "[PASS] 1 2 5 6 9 10 13 14 3 4 7 8 11 12 15 16",
			[1] = "1:~B 2:~B",
			[2] = "3:~W 4:~W",
			[3] = "5:~B 6:~B",
			[4] = "7:~W 8:~W",
			[5] = "9:~B 10:~B",
			[6] = "11:~B 12:~B",
			[7] = "13:~B 14:~B",
			[8] = "15:~B 16:~B",
		},
		Sequences = {
			["ON"] = sequence():Sequential(8, 1):Stretch(3)
		}
	},
	["Main_R_DVI"] = {
		Frames = {
			[0] = "[~B*0.5] 17 18 27 28 20 19 21 22 [~R*0.5] 23 25 [~A*0.5] 26 24",
			[1] = "[~B] 27 28 17 18",
			[2] = "[~R] 25 [~A] 26",
			[3] = "[~R] 23 [~A] 24",
			[4] = "[~B] 22 21",
			[5] = "[~B] 19 20",
		},
		Sequences = {
			["ON"] = sequence():Sequential(1, 5):Stretch(5)
		}
	},
	["Main_F_M2"] = {
		Frames = {
			[1] = "[B] 1 2 5 6 9 10 11 12 13 14 15 16 [W] 3 4 7 8",
			[2] = "[B] 5 6 9 10 11 12 13 14 15 16  [W] 3 4 7 8",
			[3] = "[B] 5 6 9 10 11 12 13 14 15 16  [W] 7 8",
			[4] = "[B] 9 10 11 12 13 14 15 16  [W] 7 8",
			[5] = "[B] 9 10 11 12 13 14 15 16",
			[6] = "[B] 11 12 13 14 15 16",
			[7] = "[B] 13 14 15 16 ",
			[8] = "[B] 15 16 ",
		},
		Sequences = {
			["ON"] = {
				1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,7,7,6,6,5,5,4,4,3,3,2,2,1,1,0,0,1,1,0,0,1,1,0,0,
			},
		}
	},
	["Main_R_M2"] = {
		Frames = {
			[1] = "[B] 27 28 22 21 19 20 17 18 [R] 23 25 [A] 26 24",
			[2] = "[B] 22 21 19 20 17 18 [R] 23 25 [A] 26 24",
			[3] = "[B] 22 21 19 20 17 18 [R] 23 [A] 24",
			[4] = "[B] 22 21 19 20 17 18",
			[5] = "[B] 19 20 17 18",
			[6] = "[B] 17 18",
		},
		Sequences = {
			["ON"] = {
				1,1,1,2,2,2,3,3,3,4,4,4,5,5,5,6,5,5,5,4,4,4,3,3,3,2,2,2,1,1,0,0,1,1,0,0,1,1,0,0,
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
			[1] = "[W] 7 8 [A] 24 [R] 23",
			[2] = "[B] 6 5 [A] 26 [R] 25",
			[3] = "[W] 4 3 [A] 26 [R] 25",
			[4] = "[B] 2 1 [B] 27 28",
		},
		Sequences = {
			["ON"] = {
				1,2,3,4,3,2,1
			},
		}
	},
	["Main_F_M3_Outer"] = {
		Frames = {
			[1] = "[B] 9 11 13 15 17 19 21",
			[2] = "[B] 10 12 14 18 16 20 22",
		},
		Sequences = {
			["ON"] = sequence():TripleFlash(1, 2)
		}
	},
	["TA"] = {
		FrameDuration = 1/30,
		Frames = {
			[1] = "[B] 27 28", --CENOUT
			[2] = "[B] 27 28 [R] 25 [A] 26",
			[3] = "[B] 27 28 [R] 25 23 [A] 26 24",
			[4] = "[B] [B] 27 28 22 21 [R] 25 23 [A] 26 24",

			[5] = "[B] 21", --RIGHT
			[6] = "[B] 21 [R] 23",
			[7] = "[B] 21 [R] 23 25",
			[8] = "[B] 21 27 [R] 23 25",
			[9] = "[B] 21 27 28 [R] 23 25",
			[10] = "[B] 21 27 28 [R] 23 25 [A] 26",
			[11] = "[B] 21 27 28 [R] 23 25 [A] 26 24",
			[12] = "[B] 21 27 28 22 [R] 23 25 [A] 26 24",

			[13] = "[B] 22", --LEFT
			[14] = "[B] 22 [A] 24",
			[15] = "[B] 22 [A] 24 26",
			[16] = "[B] 22 28 [A] 24 26",
			[17] = "[B] 22 27 28 [A] 24 26",
			[18] = "[B] 22 27 28 [A] 24 26 [R] 25",
			[19] = "[B] 22 27 28 [A] 24 26 [R] 25 23",
			[20] = "[B] 22 27 28 21 [A] 24 26 [R] 25 23",

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
	["Flood"] = {
		Frames = {
			[1] = "[W] 1 2 3 4 5 6 7 8 9 10 11 12 13 14 [FLOOD] 29",
			[2] = "[W] 1 2 3 4 5 6 7 8 9 10 11 12 13 14",
		},
		Sequences = {
			["FLOOD"] = { 1 },
		}
	},
	["Takedown"] = {
		Frames = {
			[1] = "[W] 9 10 11 12 [TAKEDOWN] 29",
		},
		Sequences = {
			["ON"] = { 1 },
		}
	},
	["AlleyLeft"] = {
		Frames = { [1] = "[W] 13 15", },
		Sequences = { ["ON"] = { 1 } }
	},
	["AlleyRight"] = {
		Frames = { [1] = "[W] 14 16", },
		Sequences = { ["ON"] = { 1 } }
	},
	ColorBurst = {
		Frames = {
			[1] = "ODD",
			[2] = "EVEN"
		},
		Sequences = {
			-- ["COLORBURST"] = sequence():Alternate( 1, 2, 2 ):Do( 4 ):FlashHold( { 1, 2 }, 3, 4 ):Do( 2 ):ToClipboard(),
			["COLORBURST"] = { 
				1, 1, 2, 2, 1, 1, 2, 2, 1, 1, 2, 2, 1, 1, 2, 2, 
				1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 0, 
				2, 0, 2, 0, 2, 0, 2, 2, 2, 2, 0, 
				1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 0, 
				2, 0, 2, 0, 2, 0, 2, 2, 2, 2, 0 
			}
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
	["Emergency.SceneForward"] = {
		["ON"] = {
			
		},
		["FLOOD"] = {
			
		}
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
	["Emergency.SceneLeft"] = { ["ON"] = { AlleyLeft = "ON" } },
	["Emergency.SceneRight"] = { ["ON"] = { AlleyRight = "ON" } },
}