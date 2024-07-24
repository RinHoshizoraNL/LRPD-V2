if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1996 Ford Crown Victoria LRPD Unmarked"
VEHICLE.Vehicle		= "96cvpi_sgm"
VEHICLE.Category 	= "Photon 2: LRPD"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
    {
		Category = "Paint",
		Options = {
            {
				Option = "Medium Wedgewood Blue Metallic",
				Properties = {
					Skin = 0,
					Color = Color(19,35,53)
				}
			},
			{
				Option = "Arctic Blue Metallic",
				Properties = {
					Skin = 0,
					Color = Color(99,123,124)
				}
			},
			{
				Option = "Portofino Blue Metallic",
				Properties = {
					Skin = 0,
					Color = Color(86, 100, 130)
				}
			},
			{
				Option = "Light Denim Blue Metallic",
				Properties = {
					Skin = 0,
					Color = Color(108, 118, 138)
				}
			},
			{
				Option = "Deep Jewel Green Metallic",
				Properties = {
					Skin = 0,
					Color = Color(4, 25, 15)
				}
			},
			{
				Option = "Dark Tourmaline Metallic",
				Properties = {
					Skin = 0,
					Color = Color(4, 25, 24)
				}
			},
			{
				Option = "Medium Willow Metallic",
				Properties = {
					Skin = 0,
					Color = Color(15, 45, 43)
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
				Option = "Medium Berry Metallic",
				Properties = {
					Skin = 0,
					Color = Color(48, 3, 12)
				}
			},
			{
				Option = "Medium Graphite Metallic",
				Properties = {
					Skin = 0,
					Color = Color(48, 48, 48)
				}
			},
			{
				Option = "Tungsten Gray Metallic",
				Properties = {
					Skin = 0,
					Color = Color(72, 72, 72)
				}
			},
			{
				Option = "Opal Frost Metallic",
				Properties = {
					Skin = 0,
					Color = Color(140, 150, 167)
				}
			},
			{
				Option = "Silver Frost Metallic",
				Properties = {
					Skin = 0,
					Color = Color(168, 168, 168)
				}
			},
			{
				Option = "Mocha Frost Metallic",
				Properties = {
					Skin = 0,
					Color = Color(174, 168, 150)
				}
			},
			{
				Option = "Medium Mocha Metallic",
				Properties = {
					Skin = 0,
					Color = Color(127, 108, 87)
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
		Category = "Wheels",
		Options = {
			{
				Option = "Hubcaps",
				BodyGroups = {
					{ BodyGroup = "hubcaps_fl", Value = 0 },
					{ BodyGroup = "hubcaps_fr", Value = 1 },
					{ BodyGroup = "hubcaps_rl", Value = 1 },
					{ BodyGroup = "hubcaps_rr", Value = 1 },
				}
			},
			{
				Option = "Hubcaps one missing",
				BodyGroups = {
					{ BodyGroup = "hubcaps_fl", Value = 0 },
					{ BodyGroup = "hubcaps_fr", Value = 1 },
					{ BodyGroup = "hubcaps_rl", Value = 2 },
					{ BodyGroup = "hubcaps_rr", Value = 1 },
				}
			},
			{
				Option = "Steelies",
				BodyGroups = {
					{ BodyGroup = "hubcaps_fl", Value = 1 },
					{ BodyGroup = "hubcaps_fr", Value = 0 },
					{ BodyGroup = "hubcaps_rl", Value = 0 },
					{ BodyGroup = "hubcaps_rr", Value = 0 },
				}
			},
			{
				Option = "Steelies missing centercaps",
				BodyGroups = {
					{ BodyGroup = "hubcaps_fl", Value = 2 },
					{ BodyGroup = "hubcaps_fr", Value = 2 },
					{ BodyGroup = "hubcaps_rl", Value = 2 },
					{ BodyGroup = "hubcaps_rr", Value = 2 },
				}
			},
			{
				Option = "Steelies missing one centercap",
				BodyGroups = {
					{ BodyGroup = "hubcaps_fl", Value = 1 },
					{ BodyGroup = "hubcaps_fr", Value = 2 },
					{ BodyGroup = "hubcaps_rl", Value = 0 },
					{ BodyGroup = "hubcaps_rr", Value = 0 },
				}
			},
		}
	},
	{
		Category = "Beacon",
		Options = {
			{
				Option = "Patlite HKF",
				Components = {
					{
						Component = "patlite_hkf",
						Position = Vector( -23, -12, 67.1 ),
						Angles = Angle( -1.9, 270, 7.5 ),
						Scale = .9,
						StateMap = "[B] 3",
						BodyGroups = {
							["trim"] = 1,
						},
						SubMaterials = {
							[5] = "sentry/props/koitoflasher/glass_blue",
							[6] = "sentry/props/koitoflasher/glass_blue"
						},
					},
				}
			}
		}
	},
	{
		Category = "Flashers",
		Options = {
			{
				Option = "Flashers",
				Components = {
					{
						Component = "photon_standard_sgmcvpi96"
					}
				},
			}
		}
	},
    {
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				BodyGroups = {
					{ BodyGroup = "pillars", Value = 1 },
				},
				Props = {
					{
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 7.5, 15, 59.5),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/procopper_cvpi.mdl",
						Position = Vector( 0, 1.5, 0),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( 0, 11.45, 26.8 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 14.25, 28 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 122, 19 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -125.4, 31.8 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 0.95,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 122.7, 19 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
				}
			}
		}
	},
}
