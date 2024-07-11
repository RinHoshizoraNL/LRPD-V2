if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2019 Chevrolet Tahoe LRPD"
VEHICLE.Vehicle		= "19tahoe_sgm"
VEHICLE.Category 	= "Photon 2: LRPD"
VEHICLE.Author		= "Rin Hoshizora"

VEHICLE.SubMaterials = {
	[22] = "mighters/mesh/red_glass",
	[0] = "mighters/mesh/ext_misc_int",
}

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			
			{
				Option = "Patrol",
				SubMaterials = {
					{ Id = 21, Material = "rin/lrpd2/tahoe19/patrol" }
				}
			},
			{
				Option = "K-9",
				SubMaterials = {
					{ Id = 21, Material = "rin/lrpd2/tahoe19/k9" }
				}
			},
		    {
				Option = "Supervisor",
				SubMaterials = {
					{ Id = 21, Material = "rin/lrpd2/tahoe19/supervisor" }
				}
			},
		}
	},
	{
		Category = "Standard Vehicle Lighting",
		Options ={
			{
				Option = "Standard Lighting",
				VirtualComponents = {
					{
						Component = "mighty_standard_sgmtahoe",
					}
				}
			}
		}
	},
    {
		Category = "Spotlights",
		Options = {
			{
				Option = "Pillar Spotlights",
				Components = {
					{
						Component = "photon_whe_par46_left",
						Position = Vector( -37, 38, 70 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_whe_par46_right",
						Position = Vector( 37, 38, 70 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
				},
			},
			{
				Option = "Roof Spotlight",
				Components = {
					{
						Component = "photon_golight_2000gt",
						Position = Vector( 0, -5, 92.65 ),
						Angles = Angle( 0, 0, -1.8 ),
						Scale = 1,
					},
				},
			}
		}
	},
	{
		Category = "Bodygroups",
		Options ={
			{
				Option = "Disable",
                BodyGroups = {
					{ BodyGroup = "pushbar", Value = 1 },
					{ BodyGroup = "windowbars", Value = 1 },
					{ BodyGroup = "partition", Value = 1 },
					{ BodyGroup = "ions", Value = 1 },
					{ BodyGroup = "console", Value = 1 },
					{ BodyGroup = "lightbar", Value = 1 },
					{ BodyGroup = "dominator", Value = 1 },
					{ BodyGroup = "mirrors", Value = 1 },
				},
			}
		}
	},
	{
		Category = "Lightbar",
		Options = {
			{
				Option = "Federal Signal Valor",
				Components = {
					{
						Component = "photon_fedsig_valor_51",
						Position = Vector( 0, -6, 90.8 ),
						Angles = Angle( 1.5, 90, 0 ),
						Scale = 1
					},
				}
			}
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
						Position = Vector( 0, -105, 75.3 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Name = "Federal Signal MB1 Controller",
						Component = "photon_fedsig_mb1_controller",
						Position = Vector( 0, 12, 39.5 ),
						Angles = Angle( 0, 0, 21 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
			},

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
						Position = Vector( 14, 126.5, 31.5 ),
						Angles = Angle( 0, 270, 180 ),
						Scale = 1,
						SubMaterials = {
						[0] = "sentry/cvpi_hd/black"
						},
					},
					{
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( -14, 126.5, 31.5 ),
						Angles = Angle( 0, 270, 180 ),
						Scale = 1,
						SubMaterials = {
						[0] = "sentry/cvpi_hd/black"
						},
					},
				},
				Components = {
					{
						Component = "oss_laf150",
						Position = Vector( -14, 126, 37.7 ),
						BodyGroups = {
							["bracket"] = 0,
							["mount"] = 0,
						},
						Phase = "B",
						StateMap = "[B] 1 2 3 4",
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.8,
						SubMaterials = {
							[1] = "sentry/props/patlite_lp3/glass_outer",
							[2] = "sentry/props/patlite_lp3/glass_outer"
						}
					},
					{
						Component = "oss_laf150",
						Position = Vector( 14, 126, 37.7 ),
						BodyGroups = {
							["bracket"] = 0,
							["mount"] = 0,
						},
						Phase = "A",
						StateMap = "[B] 1 2 3 4",
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.8,
						SubMaterials = {
							[1] = "sentry/props/patlite_lp3/glass_outer",
							[2] = "sentry/props/patlite_lp3/glass_outer"
						}
					},
					{
						Component = "oss_laf150",
						Position = Vector( -24.6, 126, 37.7 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Phase = "A",
						StateMap = "[B] 1 2 3 4",
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.8,
						SubMaterials = {
							[1] = "sentry/props/patlite_lp3/glass_outer",
							[2] = "sentry/props/patlite_lp3/glass_outer"
						}
					},
					{
						Component = "oss_laf150",
						Position = Vector( 24.6, 126, 37.7 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Phase = "B",
						StateMap = "[B] 1 2 3 4",
						Angles = Angle( 0, 270, 0 ),
						Scale = 0.8,
						SubMaterials = {
							[1] = "sentry/props/patlite_lp3/glass_outer",
							[2] = "sentry/props/patlite_lp3/glass_outer"
						}
					},
				}
			},
		}
	},
	{
		Category = "Rear",
		Options = {
			{
				Option = "CN SignalMaster",
				Components = {
					{
						Component = "photon_fedsig_cn_signalmaster",
						Position = Vector( 0, -100, 89.3),
						Angles = Angle( 1, -90, 0 ),
						Scale = 1.15,
						RenderGroup = RENDERGROUP_OPAQUE,
						BodyGroups = {
							["mount"] = "mount_short"
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = "MIX_2FH_2C",
								["MODE2"] = "MIX_2FH_2C",
								["MODE3"] = "PURSUIT"
							},
							["Emergency.Directional"] = {
								["LEFT"] = { SignalMaster = "LEFT" },
								["RIGHT"] = { SignalMaster = "RIGHT" },
							}
						}
					}
				}
			},
		}
	},
	{
		Category = "Misc",
		Options ={
			{
				Option = "Grille",
                Props = {
					{
						Name = "Grille",
						Model = "models/supermighty/mesh/tahoe_misc.mdl",
						Position = Vector( 0, 0, -0 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[0] = "mighters/mesh/ext_misc_ext"
						},
					}
				},
			}
		}
	},
	{
		Category = "Bone Category",
		Options = {
		   {
			  Option = "Civ Wheel",
			  Props = {
				{
				Model = "models/supermighty/mesh/wheel/tahoe_wheel.mdl",
				Position = Vector( 0, 0, 0 ),
				Angles = Angle( 0, 0, 0 ),
				Scale = 1,
				Bones = {
					["rim"] = { 
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Follow = { Attachment = "wheel_fl" }
					},
				}
				},
				{
					Model = "models/supermighty/mesh/wheel/tahoe_wheel.mdl",
					Position = Vector( 0, 0, 0 ),
					Angles = Angle( 0, 0, 0 ),
					Scale = 1,
					Bones = {
						["rim"] = { 
							Position = Vector( 0, 0, 0 ),
							Angles = Angle( 0, 0, 0 ),
							Scale = 1,
							Follow = { Attachment = "wheel_fr" }
						},
					}
				},
				{
					Model = "models/supermighty/mesh/wheel/tahoe_wheel.mdl",
					Position = Vector( 0, 0, 0 ),
					Angles = Angle( 0, 0, 0 ),
					Scale = 1,
					Bones = {
						["rim"] = { 
							Position = Vector( 0, 0, 0 ),
							Angles = Angle( 0, 0, 0 ),
							Scale = 1,
							Follow = { Attachment = "wheel_rr" }
						},
					}
				},
				{
					Model = "models/supermighty/mesh/wheel/tahoe_wheel.mdl",
					Position = Vector( 0, 0, 0 ),
					Angles = Angle( 0, 0, 0 ),
					Scale = 1,
					Bones = {
						["rim"] = { 
							Position = Vector( 0, 0, 0 ),
							Angles = Angle( 0, 0, 0 ),
							Scale = 1,
							Follow = { Attachment = "wheel_rl" }
						},
					}
				},
			  },
			  Bones = {
				 {
					Bone = "fl_wheel",
					Position = Vector(-1.75, 0, 0),
					Angles = Angle(0, 0, 0),
					-- Makes the front-left wheel 2x normal size
					Scale = 0
				 },
				 {
					Bone = "fr_wheel",
					Position = Vector(-1.75, 0, 0),
					Angles = Angle(0, 0, 0),
					-- Makes the front-left wheel 2x normal size
					Scale = 0
				 },
				 {
					Bone = "br_wheel",
					Position = Vector(-1.75, 0, 0),
					Angles = Angle(0, 0, 0),
					-- Makes the front-left wheel 2x normal size
					Scale = 0
				 },
				 {
					Bone = "bl_wheel",
					Position = Vector(-1.75, 0, 0),
					Angles = Angle(0, 0, 0),
					-- Makes the front-left wheel 2x normal size
					Scale = 0
				 },
			  }
		   }
		}
	},
	{
		Category = "Deflectors",
		Options ={
			{
				Option = "Enabled",
				Props = {
					{
						Name = "Deflector Driver",
						Model = "models/supermighty/mesh/tahoe/tahoe_deflector_driver.mdl",
						Position = Vector( 33.5, 8.35, 41 ),
						Angles = Angle( 0, 90, 5.3 ),
						Scale = 1,
						FollowBone = "door_fl",
					},
					{
						Name = "Deflector Pass",
						Model = "models/supermighty/mesh/tahoe/tahoe_deflector_pass.mdl",
						Position = Vector( 33.5, -8.35, 41 ),
						Angles = Angle( 0, 90, 5.3 ),
						Scale = 1,
						FollowBone = "door_fr",
					},
					{
						Name = "Deflector Driver Rear",
						Model = "models/supermighty/mesh/tahoe/tahoe_deflector_rdriver.mdl",
						Position = Vector( 19.22, 9.2, 45.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.003,
						FollowBone = "door_rl",
					},
					{
						Name = "Deflector Pass Rear",
						Model = "models/supermighty/mesh/tahoe/tahoe_deflector_rpass.mdl",
						Position = Vector( 19.22, -9.2, 45.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.003,
						FollowBone = "door_rr",
					},
				},
			}
		}
	},
    {
		Category = "Police Equipment",
		Options = {
			{
				Props = {
					{
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( -0.2, 18.1, 40.6 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 20.7, 42 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 5.5, 28, 80.5 ),
						Angles = Angle( 8, 264.8, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necmdt.mdl",
						Position = Vector( 0, 31, 56.5 ),
						Angles = Angle( -18, 270, 0 ),
						Scale = 0.8,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/procopper_cvpi.mdl",
						Position = Vector( 0, 8, 14),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -58, 88.75),
						Angles = Angle( 0.5, 270, 0 ),
						Scale = 1.1,
						BodyGroups = {
							["feet"] = 1,
						},
					},
					{
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( 20, 5, 87.05),
						Angles = Angle( -4.5, 270, -3 ),
						Scale = 1,
					},
					{
						Name = "Bowtie",
						Model = "models/supermighty/mesh/tahoe/tahoe_bowtie.mdl",
						Position = Vector( 22, -32.9, 0 ),
						Angles = Angle( 90, 90, 0 ),
						Scale = 1,
						FollowBone = "trunk",
					},
					{
						Model = "models/xenosprops/jp_plate/jp_plate.mdl",
						Position = Vector( 0, -123.15, 47 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 0.95,
						BodyGroups = {
							["rear_seal"] = 0,
						},
						SubMaterials = {
							[0] = "rin/lrpd2/props/plate_police",
						},
					},
					{
						Model = "models/xenosprops/jp_plate/jp_plate.mdl",
						Position = Vector( 0, 123.7, 22 ),
						Angles = Angle( 4, 90, 0 ),
						Scale = 0.95,
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
