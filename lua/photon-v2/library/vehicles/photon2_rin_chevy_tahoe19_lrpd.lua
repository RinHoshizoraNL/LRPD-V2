if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2019 Chevrolet Tahoe LRPD"
VEHICLE.Vehicle		= "19tahoe_sgm"
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
					{ Id = 21, Material = "rin/lrpd2/tahoe19/patrol" }
				},
			},
			{
				Option = "K-9 Unit Miku",
				SubMaterials = {
					{ Id = 21, Material = "rin/lrpd2/tahoe19/k9" }
				},
			},
			{
				Option = "Supervisor",
				SubMaterials = {
					{ Id = 21, Material = "rin/lrpd2/tahoe19/supervisor" }
				},
			},
		}
	},
	{
		Category = "Trim Package",
		Options = {
			{
				Option = "SSV",
				BodyGroups = {
					{ BodyGroup = "mirrors", Value = 1 },
					{ BodyGroup = "grille", Value = 0 },
					{ BodyGroup = "wheels", Value = 1 },
				},
			},
			{
				Option = "PPV",
				BodyGroups = {
					{ BodyGroup = "mirrors", Value = 1 },
					{ BodyGroup = "grille", Value = 0 },
					{ BodyGroup = "wheels", Value = 0 },
				},
			},
			{
				Option = "Civilian A",
				BodyGroups = {
					{ BodyGroup = "mirrors", Value = 2 },
					{ BodyGroup = "grille", Value = 1 },
					{ BodyGroup = "wheels", Value = 2 },
				},
			},
			{
				Option = "Civilian B",
				BodyGroups = {
					{ BodyGroup = "mirrors", Value = 2 },
					{ BodyGroup = "grille", Value = 1 },
					{ BodyGroup = "wheels", Value = 5 },
				},
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
			{
				Option = "Federal Signal Valor",
				Components = {
					{
						Component = "photon_fedsig_valor_51_lrpd",
						Position = Vector( 0, -6, 90.7 ),
						Angles = Angle( 1, 90, 0 ),
						Scale = 1,
					},
				}
			}
		}
	},
	{
		Category = "Pushbar",
		Options = {
			{
				Option = "Pushbar",
				Props = {
				    {
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( 17, 126.5, 32 ),
						Angles = Angle( 0, 270, 180 ),
						Scale = 1,
						SubMaterials = {
						[0] = "sentry/cvpi_hd/black"
						},
					},
					{
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( -17, 126.5, 32 ),
						Angles = Angle( 0, 270, 180 ),
						Scale = 1,
						SubMaterials = {
						[0] = "sentry/cvpi_hd/black"
						},
					},
				},
				Components = {
					{
						Component = "oss_laf150_lrpd",
						Position = Vector( -14, 126, 37.95 ),
						BodyGroups = {
							["bracket"] = 0,
							["mount"] = 0,
						},
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						Phase = 180,
						SubMaterials = {
							[1] = "schmal/photon/fedsig_legend/dome_r",
							[2] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "oss_laf150_lrpd",
						Position = Vector( 14, 126, 37.95 ),
						BodyGroups = {
							["bracket"] = 0,
							["mount"] = 0,
						},
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[1] = "schmal/photon/fedsig_legend/dome_r",
							[2] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( 24.4, 126, 37.95 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						Phase = 180,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( -24.4, 126, 37.95 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
				}
			},
		}
	},
	{
		Category = "Front Bumper",
		Options = {
			{
				Option = "Front Bumper",
				Components = {
				    {
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( 36, 112, 21.8 ),
						Angles = Angle( 0, -30, 0 ),
						Scale = 1,
						Phase = 180,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( -36, 112, 21.8 ),
						Angles = Angle( 0, 30, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
				}
			},
		}
	},
	{
		Category = "Rear Quarter Windows",
		Options = {
			{
				Option = "Rear Quarter Windows",
				Components = {
				    {
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( 40, -95, 63 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( -40, -95, 63 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Phase = 180,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			},
		}
	},
	{
		Category = "Rear Interior Lighting",
		Options = {
            {
				Option = "FS MB1",
				Components = {
					{
						Name = "Federal Signal MB1",
						Component = "photon_fedsig_mb1",
						Position = Vector( 0, -110, 75.65 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( 22.2, -110, 77.5 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						Phase = 180,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( -22.2, -110, 77.5 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
			},

		}
	},
	{
		Category = "Spotlights",
		Options = {
			{
				Option = "Pillar Spotlights",
				Components = {
					{
						Component = "photon_par46_left",
						Position = Vector( -37, 40.5, 68 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_par46_right",
						Position = Vector( 37, 40.5, 68 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Inputs = {
							-- Clear the default illumination mode
							["Emergency.SceneForward"] = { ["ON"] = {} },
						}
					}
				},
			},
		}
	},
	{
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				BodyGroups = {
					{ BodyGroup = "pushbar", Value = 1 },
					{ BodyGroup = "windowbars", Value = 1 },
					{ BodyGroup = "partition", Value = 0 },
					{ BodyGroup = "lightbar", Value = 1 },
					{ BodyGroup = "console", Value = 1 },
					{ BodyGroup = "ions", Value = 1 },
					{ BodyGroup = "dominator", Value = 1 },
					{ BodyGroup = "keychain", Value = 0 },
				},
				Props = {
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 7, 28, 80.5 ),
						Angles = Angle( 8, 264.8, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 27, -4, 91.2),
						Angles = Angle( 0, 0, -1 ),
						Scale = 1
					},
					{
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( -21.2, -70, 87.5),
						Angles = Angle( -1, 90, -3.5 ),
						Scale = 1
					},
					{
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( 21.2, -70, 87.5),
						Angles = Angle( -1, 90, 3.5 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -123.1, 47 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 123.5, 22.1 ),
						Angles = Angle( 4, 90, 0 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
				}
			}
		}
	},
}