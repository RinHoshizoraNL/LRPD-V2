if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1996 Ford Crown Victoria LRPD"
VEHICLE.Vehicle		= "96cvpi_sgm"
VEHICLE.Category 	= "Photon 2: LRPD"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
    	{
		Category = "Livery",
		Options = {
			
			{
				Option = "Patrol",
				SubMaterials = {
					{ Id = 6, Material = "rin/lrpd2/crownvic96/patrol" }
				},
			},
			{
				Option = "K-9 Unit",
				SubMaterials = {
					{ Id = 6, Material = "rin/lrpd2/crownvic96/k9" },
				},
			},
			{
				Option = "Traffic Enforcement",
				SubMaterials = {
					{ Id = 6, Material = "rin/lrpd2/crownvic96/traffic" }
				},
			},
			{
				Option = "Little Tokyo Community Service Officer",
				SubMaterials = {
					{ Id = 6, Material = "rin/lrpd2/crownvic96/little_tokyo" }
				},
			},
			{
				Option = "Supervisor",
				SubMaterials = {
					{ Id = 6, Material = "rin/lrpd2/crownvic96/supervisor" }
				},
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
            {
				Option = "FedSig Jetstream",
				Components = {
					{
						Name = "@jetsream",
						Component = "fedsig_jetstream",
						Position = Vector( 0, -18.5, 66.1 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.04,
						SubMaterials = {
						[3] = "rin/lrpd2/props/jetstream"
						},
						StateMap = "[~B] 1 4 9 13 15 17 18 19 20 21 [~SW] 2 3 12 14 16 22 23 [R] 5 [A] 6 [ROT] 7 8 10 11 [Sweep] 9",
					}
				},
			},

		}
	},
	{
		Category = "Wheels",
		Options = {
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
		Category = "Spotlights",
		Options = {
			{
				Option = "Spotlights",
				Components = {
					{
						Component = "photon_par46_left",
						Position = Vector( -36, 28, 50 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/env_cubemap_model"
						}
					},
					{
						Component = "photon_par46_right",
						Position = Vector( 36, 28, 50 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/env_cubemap_model"
						},
						Inputs = {
							-- Clear the default illumination mode
							["Emergency.SceneForward"] = { ["ON"] = {} },
						}
					}
				}
				
			},
		}
	},
	{
		Category = "Push Bar",
		Options = {
			{
				Option = "Push Bar",
				Props = {
					{
						Model = "models/schmal/pushbar_cvpi96.mdl",
						Position = Vector( 0, 121, 16 ),
						Angles = Angle(),
						Scale = 1.1
					},
					{
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( 0, 127, 28.15 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						SubMaterials = {
						[0] = "sentry/cvpi_hd/black"
						},
					},
				},
				Components = {
					{
						Name = "@pushbar_koito_flasher",
						Component = "koito_flasher",
						Position = Vector( 10, 126.3, 29 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						StateMap = "[B] 1",
						SubMaterials = {
							[3] = "sentry/props/koitoflasher/glass_blue"
						},
					},
					{
						Inherit = "@pushbar_koito_flasher",
						Position = Vector( -10, 126.3, 29 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						Phase = 180,
					},
				}
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
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -35, 69.25),
						Angles = Angle( 0, 0, 3 ),
						Scale = 1
					},
					{
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 7.5, 15, 59.5),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 0, 0, 0),
						Angles = Angle( 0, 0, 0 ),
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
						Model = "models/xenosprops/jp_plate/jp_plate.mdl",
						Position = Vector( 0, -125.5, 32 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 0.89,
						BodyGroups = {
							["rear_seal"] = 0,
						},
						SubMaterials = {
							[0] = "rin/lrpd2/props/plate_police",
						},
					},
					{
						Model = "models/xenosprops/jp_plate/jp_plate.mdl",
						Position = Vector( 0, 122.8, 19 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.89,
						BodyGroups = {
							["rear_seal"] = 0,
						},
						SubMaterials = {
							[0] = "rin/lrpd2/props/plate_police",
						},
					},
				}
			}
		}
	},
}