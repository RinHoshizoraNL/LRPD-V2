if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2010 Ford Crown Victoria LRPD Unmarked"
VEHICLE.Vehicle		= "cvpi_hd_sgm"
VEHICLE.Category 	= "Photon 2: LRPD"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
    {
		Category = "Paint",
		Options = {
            {
				Option = "Deep Wedgewood Blue Metallic",
				Properties = {
					Skin = 0,
					Color = Color(1,12,32)
				}
			},
			{
				Option = "Norsea Blue Metallic",
				Properties = {
					Skin = 0,
					Color = Color(30,56,82)
				}
			},
			{
				Option = "Light Ice Blue Metallic",
				Properties = {
					Skin = 0,
					Color = Color(127, 150, 156)
				}
			},
			{
				Option = "Aspen Green Metallic",
				Properties = {
					Skin = 0,
					Color = Color(12, 32, 26)
				}
			},
			{
				Option = "Dark Toreador Red Metallic",
				Properties = {
					Skin = 0,
					Color = Color(58, 0, 0)
				}
			},
            {
				Option = "Dark Cherry Red Metallic",
				Properties = {
					Skin = 0,
					Color = Color(27, 0, 0)
				}
			},
			{
				Option = "Medium Titanium Metallic",
				Properties = {
					Skin = 0,
					Color = Color(30, 30, 30)
				}
			},
			{
				Option = "Silver Birch Metallic",
				Properties = {
					Skin = 0,
					Color = Color(153, 153, 153)
				}
			},
			{
				Option = "Smokestone Metallic",
				Properties = {
					Skin = 0,
					Color = Color(156, 153, 145)
				}
			},
			{
				Option = "Black",
				Properties = {
					Skin = 0,
					Color = Color(0, 0, 0)
				}
			},
			{
				Option = "Performance White",
				Properties = {
					Skin = 0,
					Color = Color(255, 255, 255)
				}
			},
        }
	},
	{
		Category = "Trim Package",
		Options = {
			{
				Option = "LX Sport",
				BodyGroups = {
					{ BodyGroup = "pushbar", Value = 0 },
					{ BodyGroup = "grille", Value = 3 },
					{ BodyGroup = "hubcaps", Value = 1 },
					{ BodyGroup = "doortrim", Value = 6 },
					{ BodyGroup = "rearfascia", Value = 1 },
					{ BodyGroup = "reartrim", Value = 1 },
					{ BodyGroup = "handles", Value = 1 },
					{ BodyGroup = "spotlight_l", Value = 1 },
					{ BodyGroup = "spotlight_r", Value = 1 },
					{ BodyGroup = "trunkmodel", Value = 1 },
					{ BodyGroup = "windowbars", Value = 0 },
					{ BodyGroup = "partition", Value = 1 },
					{ BodyGroup = "rims", Value = 1 },
					{ BodyGroup = "mirrors", Value = 1 },
					{ BodyGroup = "door_l_notch", Value = 1 },
					{ BodyGroup = "door_r_notch", Value = 1 },
					{ BodyGroup = "keypad", Value = 1 },
					{ BodyGroup = "bumperf_chrome", Value = 0 },
					{ BodyGroup = "bumperr_chrome", Value = 0 },
				},
			},
			{
				Option = "LX",
				BodyGroups = {
					{ BodyGroup = "pushbar", Value = 0 },
					{ BodyGroup = "grille", Value = 1 },
					{ BodyGroup = "hubcaps", Value = 1 },
					{ BodyGroup = "doortrim", Value = 6 },
					{ BodyGroup = "rearfascia", Value = 1 },
					{ BodyGroup = "reartrim", Value = 1 },
					{ BodyGroup = "handles", Value = 1 },
					{ BodyGroup = "spotlight_l", Value = 1 },
					{ BodyGroup = "spotlight_r", Value = 1 },
					{ BodyGroup = "trunkmodel", Value = 1 },
					{ BodyGroup = "windowbars", Value = 0 },
					{ BodyGroup = "partition", Value = 1 },
					{ BodyGroup = "rims", Value = 1 },
					{ BodyGroup = "mirrors", Value = 1 },
					{ BodyGroup = "door_l_notch", Value = 1 },
					{ BodyGroup = "door_r_notch", Value = 1 },
					{ BodyGroup = "keypad", Value = 1 },
					{ BodyGroup = "bumperf_chrome", Value = 1 },
					{ BodyGroup = "bumperr_chrome", Value = 1 },
				},
			},
			{
				Option = "Street Appearance Package",
				BodyGroups = {
					{ BodyGroup = "pushbar", Value = 0 },
					{ BodyGroup = "grille", Value = 1 },
					{ BodyGroup = "hubcaps", Value = 0 },
					{ BodyGroup = "doortrim", Value = 2 },
					{ BodyGroup = "rearfascia", Value = 1 },
					{ BodyGroup = "reartrim", Value = 1 },
					{ BodyGroup = "handles", Value = 1 },
					{ BodyGroup = "spotlight_l", Value = 1 },
					{ BodyGroup = "spotlight_r", Value = 1 },
					{ BodyGroup = "trunkmodel", Value = 1 },
					{ BodyGroup = "windowbars", Value = 0 },
					{ BodyGroup = "partition", Value = 1 },
					{ BodyGroup = "rims", Value = 0 },
					{ BodyGroup = "mirrors", Value = 0 },
					{ BodyGroup = "door_l_notch", Value = 1 },
					{ BodyGroup = "door_r_notch", Value = 1 },
					{ BodyGroup = "keypad", Value = 0 },
					{ BodyGroup = "bumperf_chrome", Value = 1 },
					{ BodyGroup = "bumperr_chrome", Value = 1 },
				},
			},
			{
				Option = "Police Interceptor",
				BodyGroups = {
					{ BodyGroup = "pushbar", Value = 0 },
					{ BodyGroup = "grille", Value = 0 },
					{ BodyGroup = "hubcaps", Value = 0 },
					{ BodyGroup = "doortrim", Value = 0 },
					{ BodyGroup = "rearfascia", Value = 0 },
					{ BodyGroup = "reartrim", Value = 0 },
					{ BodyGroup = "handles", Value = 0 },
					{ BodyGroup = "spotlight_l", Value = 1 },
					{ BodyGroup = "spotlight_r", Value = 1 },
					{ BodyGroup = "trunkmodel", Value = 0 },
					{ BodyGroup = "windowbars", Value = 0 },
					{ BodyGroup = "partition", Value = 1 },
					{ BodyGroup = "rims", Value = 0 },
					{ BodyGroup = "mirrors", Value = 0 },
					{ BodyGroup = "door_l_notch", Value = 1 },
					{ BodyGroup = "door_r_notch", Value = 1 },
					{ BodyGroup = "keypad", Value = 0 },
					{ BodyGroup = "bumperf_chrome", Value = 0 },
					{ BodyGroup = "bumperr_chrome", Value = 0 },
				},
			},
		}
	},
	{
		Category = "Rain Guards",
		Options = {
			{
				Option = "Rain Guards",
				BodyGroups = {
					{ BodyGroup = "rainguards", Value = 1 },
				},
			},
			{
				Option = "None",
				BodyGroups = {
					{ BodyGroup = "rainguards", Value = 0 },
				},
			},
		}
	},
    {
		Category = "Flashers",
		Options = {
			{
				Option = "Flashers",
				VirtualComponents = {
					{
						Component = "photon_standard_cvpi10_lrpd",
					}
				}
			},
		}
	},
	{
		Category = "Visor Light",
		Options = {
			{
				Option = "Spectralux ILS",
				Components = {
					{
						Component = "photon_fedsig_ils",
						Position = Vector( 0, 12.5, 61 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.1,
						StateMap = "[B] 3 4 5 6 7 8 [W] 1 2 ",
						Options = {
							Width = 3,
							Angle = 10
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					}
				}
			},
		}
	},
	{
		Category = "Rear Deck Lighting",
		Options = {
            {
				Option = "Signalmaster",
				Components = {
					{
						Component = "photon_fedsig_cn_signalmaster",
						Position = Vector( 0, -78, 52.4 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
			},

		}
	},
	{
		Category = "Grille Lighting",
		Options = {
            {
				Option = "FS Xstream",  
				Components = {
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( 11, 108.5, 31.65 ),
						Angles = Angle( 1.5, -4, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( -11, 108.5, 31.65 ),
						Angles = Angle( -1.5, 4, 0 ),
						Scale = 0.9,
						Phase = 180,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
				},
			},

		}
	},
    {
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				Components = {
					{
						Component = "photon_pan_toughbookcf30",
						Position = Vector( 6.5, 13.5, 40 ),
						Angles = Angle( 0, 31, 0 ),
						Scale = 1,
						Options = {
							Pole = 2,
							Base = -60,
							-- You can change the screen material by using this option:
							Screen = "rin/lrpd2/props/laptop_screen_lrpd",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					}
				},
				Props = {
					{
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( -0.2, 10, 26.85 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 12.75, 28 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 0, 7.4, 26.2 ),
						Angles = Angle( 0, 0, -69 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 3, 16, 61.6 ),
						Angles = Angle( 8, 264.8, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 0, -67, 62.7 ),
						Angles = Angle( 8, 90, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( 0, -105, 48.6),
						Angles = Angle( -4.5, 90, 0 ),
						Scale = 1,
						Color = Color(0, 0, 0)
					},
					{
						Model = "models/xenosprops/na_plate/na_plate.mdl",
						Position = Vector( 0, -124.55, 36.2 ),
						Angles = Angle( -11, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate.mdl",
						Position = Vector( 0, 118.8, 18.2 ),
						Angles = Angle( 6.5, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
				}
			}
		}
	},
}