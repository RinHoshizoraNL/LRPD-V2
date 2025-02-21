if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2006 Dodge Charger LRPD"
VEHICLE.Vehicle		= "06charger_sgm"
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
					{ Id = 3, Material = "rin/lrpd2/charger06/patrol" }
				},
			},
			{
				Option = "K-9 Unit",
				SubMaterials = {
					{ Id = 3, Material = "rin/lrpd2/charger06/k9" },
				},
			},
			{
				Option = "Traffic Enforcement",
				SubMaterials = {
					{ Id = 3, Material = "rin/lrpd2/charger06/traffic" }
				},
			},
			{
				Option = "Supervisor",
				SubMaterials = {
					{ Id = 3, Material = "rin/lrpd2/charger06/supervisor" }
				},
			},
		}
	},
    {
		Category = "Lighting Setup",
		Options = {
            {
				Option = "2006",
				Components = {
					{
                        Component = "patlite_axs12",
                        Position = Vector( 0, -10, 71.3 ),
                        Angles = Angle( -1, -90, 0 ),
                        Scale = 1.2,
						States = {
							[1] = "B",
							[2] = "B",
							[3] = "B",
							[4] = "B",
						},
                        Options = {
                            FeetWidthOffset = 1,
                            FeetTilt = -4,
                        },
						SubMaterials = {
							[12] = "sentry/props/glass/blue"
						},
                    },
                    {
						Component = "koito_flasher_lrpd",
						Position = Vector( 11, 127.4, 27.8 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[3] = "schmal/photon/fedsig_legend/dome_r",
							[0] = "sentry/props/koitoflasher/plastic_r",
						},
					},
					{
						Component = "koito_flasher_lrpd",
						Position = Vector( -11, 127.4, 27.8 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						Phase = 90,
						SubMaterials = {
							[3] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
                    {
						Component = "koito_flasher_lrpd",
						Position = Vector( 18, -71, 55.8 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[3] = "schmal/photon/fedsig_legend/dome_r",
							[0] = "sentry/props/koitoflasher/plastic_r",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "koito_flasher_lrpd",
						Position = Vector( -18, -71, 55.8 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.9,
						Phase = 90,
						SubMaterials = {
							[3] = "schmal/photon/fedsig_legend/dome_r"
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
                Props = {
				    {
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( -4, 127, 26.9 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						SubMaterials = {
						[0] = "sentry/cvpi_hd/black"
						},
					},
					{
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( 4, 127, 26.9 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						SubMaterials = {
						[0] = "sentry/cvpi_hd/black"
						},
					},
				},
			},
            {
				Option = "2007",
				Components = {
					{
						Component = "photon_fedsig_legend_lrpd",
						Position = Vector( 0, -11, 72.7 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.92,
						SubMaterials = {
						[6] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
                    {
						Component = "oss_laf150_lrpd",
						Position = Vector( -10, 127, 27.5 ),
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
						Position = Vector( 10, 127, 27.5 ),
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
						Name = "@xtream_single",
						Component = "photon_fedsig_xstream_single",
						Position = Vector( -14, -80, 54 ),
						Angles = Angle( 0, 270, 182 ),
						Scale = 1,
						StateMap = "[B] 1",
						BodyGroups = {
							["shroud"] = 1,
							["mount"] = 1,
						},
						RenderGroup = RENDERGROUP_OPAQUE,
						Segments = {
							Light = {
								Frames = {
								    [1] = "1", 
								},
								Sequences = {
									["QUAD_FLASH"] = sequence():QuadFlash( 1, 0 ),
									["DOUBLE_FLASH"] = sequence():DoubleFlash( 1, 0 ),
									["SCENE"] = { 1, 1, 1, 1, 0, 0, 0, 0 },
								}
							},
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {
									Light = "SCENE",
								},
								["MODE2"] = {
									Light = "DOUBLE_FLASH",
								},
								["MODE3"] = {
									Light = "QUAD_FLASH",
								}
							},
						},
					},
					{
						Inherit = "@xtream_single",
						Position = Vector( 14, -80, 54 ),
						Angles = Angle( 0, 270, 178 ),
						Phase = 180,
					}
				},
                Props = {
                    {
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( 12.5, 127, 21 ),
						Angles = Angle( 0, 270, 180 ),
						Scale = 1,
						SubMaterials = {
						[0] = "sentry/cvpi_hd/black"
						},
					},
					{
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( -12.5, 127, 21 ),
						Angles = Angle( 0, 270, 180 ),
						Scale = 1,
						SubMaterials = {
						[0] = "sentry/cvpi_hd/black"
						},
					},
				},
			},
		}
	},
    {
		Category = "Wheels",
		Options = {
			{
				Option = "Hubcaps",
				BodyGroups = {
					{ BodyGroup = "wheels_front", Value = 1 },
					{ BodyGroup = "wheels_rear", Value = 1 },
				},
			},
			{
				Option = "Hubcaps Black",
				BodyGroups = {
					{ BodyGroup = "wheels_front", Value = 2 },
					{ BodyGroup = "wheels_rear", Value = 2 },
				},
			},
			{
				Option = "Steelies",
				BodyGroups = {
					{ BodyGroup = "wheels_front", Value = 0 },
					{ BodyGroup = "wheels_rear", Value = 0 },
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
						Position = Vector( -36, 35, 52 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_par46_right",
						Position = Vector( 36, 35, 52 ),
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
				Components = {
					{
						Component = "photon_pan_toughbookcf30",
						Position = Vector( 6.5, 17, 40 ),
						Angles = Angle( 0, 31, 0 ),
						Scale = 0.9,
						Options = {
							Pole = 0,
							Base = -60,
							-- You can change the screen material by using this option:
							Screen = "rin/lrpd2/props/laptop_screen_lrpd",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
				Props = {
					{
						Model = "models/supermighty/setina/setina_impala_pushbar.mdl",
						Position = Vector( 0, 123.5, 20.7 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = Vector( 1, 1.1, 1.1 ),
					},
                    {
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 8.5, 27.9, 60.1 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
                    {
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( -0.2, 14.1, 26.5 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 16.8, 28 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 0, 11.4, 26.1 ),
						Angles = Angle( 0, 0, -69 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/procopper_cvpi.mdl",
						Position = Vector( 0, 4, 0 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 0, 1.5, 0 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -30, 69.7),
						Angles = Angle( 0, 0, 4 ),
						Scale = 1
					},
                    {
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -104, 52),
						Angles = Angle( 0, 0, 5.5 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -120.7, 25.3 ),
						Angles = Angle( -10, -90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 124.3, 17.3 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 125, 17.3 ),
						Angles = Angle( 0, 90, 0 ),
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