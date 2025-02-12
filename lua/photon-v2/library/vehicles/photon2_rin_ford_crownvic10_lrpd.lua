if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2010 Ford Crown Victoria LRPD"
VEHICLE.Vehicle		= "cvpi_hd_sgm"
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
					{ Id = 3, Material = "rin/lrpd2/crownvic10/patrol" }
				},
				BodyGroups = {
					{ BodyGroup = "doortrim", Value = 2 }
				},
			},
			{
				Option = "K-9 Unit Fumi",
				SubMaterials = {
					{ Id = 3, Material = "rin/lrpd2/crownvic10/k9" },
				},
				BodyGroups = {
					{ BodyGroup = "doortrim", Value = 2 }
				},
			},
			{
				Option = "Traffic Enforcement",
				SubMaterials = {
					{ Id = 3, Material = "rin/lrpd2/crownvic10/traffic" }
				},
				BodyGroups = {
					{ BodyGroup = "doortrim", Value = 2 }
				},
			},
			{
				Option = "Traffic Enforcement (Don't Text & Drive Campaign)",
				SubMaterials = {
					{ Id = 3, Material = "rin/lrpd2/crownvic10/traffic_alt" }
				},
				BodyGroups = {
					{ BodyGroup = "doortrim", Value = 5 }
				},
			},
			{
				Option = "Little Tokyo Community Service Officer",
				SubMaterials = {
					{ Id = 3, Material = "rin/lrpd2/crownvic10/little_tokyo" }
				},
				BodyGroups = {
					{ BodyGroup = "doortrim", Value = 2 }
				},
			},
			{
				Option = "Supervisor",
				SubMaterials = {
					{ Id = 3, Material = "rin/lrpd2/crownvic10/supervisor" }
				},
				BodyGroups = {
					{ BodyGroup = "doortrim", Value = 2 }
				},
			},
			{
				Option = "Special Operations",
				SubMaterials = {
					{ Id = 3, Material = "rin/lrpd2/crownvic10/special_ops" }
				},
				BodyGroups = {
					{ BodyGroup = "doortrim", Value = 2 }
				},
			},
			{
				Option = "Choose Your Ride DUI Campaign Half Taxi",
				SubMaterials = {
					{ Id = 3, Material = "rin/lrpd2/crownvic10/taxi" }
				},
				BodyGroups = {
					{ BodyGroup = "doortrim", Value = 2 }
				},
			},
			{
				Option = "Recruitment",
				SubMaterials = {
					{ Id = 3, Material = "rin/lrpd2/crownvic10/recruitment" }
				},
				BodyGroups = {
					{ BodyGroup = "doortrim", Value = 5 }
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
					{ BodyGroup = "hubcaps", Value = 0 },
				},
			},
			{
				Option = "Steelies",
				BodyGroups = {
					{ BodyGroup = "hubcaps", Value = 1 },
				},
			},
			{
				Option = "Steelies missing center caps",
				BodyGroups = {
					{ BodyGroup = "hubcaps", Value = 2 },
				},
			}
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
		Category = "Trim Package",
		Options = {
			{
				Option = "Police Interceptor",
				BodyGroups = {
					{ BodyGroup = "grille", Value = 0 },
					{ BodyGroup = "reartrim", Value = 0 },
					{ BodyGroup = "handles", Value = 0 },
					{ BodyGroup = "trunkmodel", Value = 0 },
					{ BodyGroup = "mirrors", Value = 0 },
					{ BodyGroup = "bumperf_chrome", Value = 0 },
					{ BodyGroup = "bumperr_chrome", Value = 0 },
				},
			},
			{
				Option = "Street Appearance Package",
				BodyGroups = {
					{ BodyGroup = "grille", Value = 1 },
					{ BodyGroup = "reartrim", Value = 1 },
					{ BodyGroup = "handles", Value = 1 },
					{ BodyGroup = "trunkmodel", Value = 1 },
					{ BodyGroup = "mirrors", Value = 0 },
					{ BodyGroup = "bumperf_chrome", Value = 2 },
					{ BodyGroup = "bumperr_chrome", Value = 1 },
				},
			},
		}
	},
	{
		Category = "Pushbar",
		Options = {
			{
				Option = "Pushbar",
				BodyGroups = {
					{ BodyGroup = "pushbar", Value = 1 }
				},
				Props = {
				    {
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( 11.5, 121.4, 22.5 ),
						Angles = Angle( 0, 270, 180 ),
						Scale = 1,
						SubMaterials = {
						[0] = "sentry/cvpi_hd/black"
						},
					},
					{
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( -11.5, 121.4, 22.5 ),
						Angles = Angle( 0, 270, 180 ),
						Scale = 1,
						SubMaterials = {
						[0] = "sentry/cvpi_hd/black"
						},
					},
				},
				Components = {
					{
						Name = "@pushbar_laf150",  --LEFT FRONT FLASHER
						Component = "oss_laf150_lrpd",
						Position = Vector( -10, 120.5, 28.7 ),
						BodyGroups = {
							["bracket"] = 0,
							["mount"] = 0,
						},
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.8,
						SubMaterials = {
							[1] = "schmal/photon/fedsig_legend/dome_r",
							[2] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Inherit = "@pushbar_laf150", --RIGHT FRONT FLASHER
						Position = Vector( 10, 120.5, 28.7 ),
						Angles = Angle( 0, 0, 0 ),
						Phase = 180,
					},
					{
						Inherit = "@pushbar_laf150", --RIGHT SIDE FLASHER
						Position = Vector( 18, 120, 26.5 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 0.7,
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
					},
					{
						Inherit = "@pushbar_laf150", --LEFT SIDE FLASHER
						Position = Vector( -18, 120, 26.5 ),
						Angles = Angle( 0, 90, 0 ),
						Phase = 180,
						Scale = 0.7,
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
					},
				}
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
			{
				Option = "Federal Signal Legend",
				Components = {
					{
						Component = "photon_fedsig_legend_lrpd",
						Position = Vector( 0, -19, 70.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.85,
						SubMaterials = {
						[6] = "schmal/photon/fedsig_legend/dome_r"
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
				VirtualComponents = {
					{
						Component = "photon_standard_cvpi10_lrpd",
					}
				}
			},
		}
	},
    {
		Category = "Interior Lighting",
		Options = {
            {
				Option = "FS MB1",
				Components = {
					{
						Name = "Federal Signal MB1",
						Component = "photon_fedsig_mb1",
						Position = Vector( 0, -75, 51.1 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Name = "Federal Signal MB1 Controller",
						Component = "photon_fedsig_mb1_controller",
						Position = Vector( 0, 4, 25.3 ),
						Angles = Angle( 0, 0, 21 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Name = "@xtream_single",
						Component = "photon_fedsig_xstream_single",
						Position = Vector( -10, -78, 50.5 ),
						Angles = Angle( 0, 270, 180 ),
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
							["Vehicle.Transmission"] = {
		                        ["PARK"] = {
			                        Light = "SCENE",
		                        },
	                        },
						},
					},
					{
						Inherit = "@xtream_single",
						Position = Vector( 10, -78, 50.5 ),
						Angles = Angle( 0, 270, 180 ),
						Phase = 180,
					}
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
						Position = Vector( -35.06, 26.46, 49.282 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_par46_right",
						Position = Vector( 35.06, 26.46, 49.282 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Inputs = {
							-- Clear the default illumination mode
							["Emergency.SceneForward"] = { ["ON"] = {} },
						}
					}
				},
				BodyGroups = {
					{ BodyGroup = "door_l_notch", Value = 0 },
					{ BodyGroup = "door_r_notch", Value = 0 },
				}
			},
		}
	},
	{
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				BodyGroups = {
					{ BodyGroup = "rearfascia", Value = 1 },
					{ BodyGroup = "spotlight_l", Value = 1 },
					{ BodyGroup = "spotlight_r", Value = 1 },
					{ BodyGroup = "windowbars", Value = 1 },
				},
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
						Position = Vector( 7, 15, 62 ),
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
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -40, 68.3),
						Angles = Angle( 0, 0, 2.5 ),
						Scale = 1
					},
					{
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( 0, -105, 48.6),
						Angles = Angle( -4.5, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -124.55, 36.2 ),
						Angles = Angle( -11, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
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