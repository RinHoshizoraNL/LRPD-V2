if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1995 Chevrolet Caprice LRPD"
VEHICLE.Vehicle		= "95caprice_sgm"
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
					{ Id = 22, Material = "rin/lrpd2/caprice95/patrol" },
					{ Id = 20, Material = "rin/lrpd2/caprice95/seats_blue" },
					{ Id = 21, Material = "rin/lrpd2/caprice95/dash_blue" }
				},
			},
			{
				Option = "K-9 Unit",
				SubMaterials = {
					{ Id = 22, Material = "rin/lrpd2/caprice95/k9" },
					{ Id = 20, Material = "rin/lrpd2/caprice95/seats_blue" },
					{ Id = 21, Material = "rin/lrpd2/caprice95/dash_blue" }
				},
			},
            {
				Option = "Supervisor",
				SubMaterials = {
					{ Id = 22, Material = "rin/lrpd2/caprice95/supervisor" },
					{ Id = 20, Material = "rin/lrpd2/caprice95/seats_blue" },
					{ Id = 21, Material = "rin/lrpd2/caprice95/dash_blue" }
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
						Position = Vector( 0, -20, 58 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.05,
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
		Category = "Flashers",
		Options = {
			{
				Option = "Flashers",
				Components = {
					{
						Component = "photon_standard_chevcap91"
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
						Position = Vector( -37.5, 30, 42 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/env_cubemap_model"
						}
					},
					{
						Component = "photon_par46_right",
						Position = Vector( 37.5, 30, 42 ),
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
						Position = Vector( 0, 113, 10 ),
						Angles = Angle(),
						Scale = 1
					},
					{
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( 0, 119, 21.3 ),
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
						Position = Vector( 10, 117.7, 22.2 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						StateMap = "[B] 1",
						SubMaterials = {
							[3] = "sentry/props/koitoflasher/glass_blue"
						},
					},
					{
						Inherit = "@pushbar_koito_flasher",
						Position = Vector( -10, 117.7, 22.2 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						Phase = 180,
					},
				}
			}
		}
	},
	{
		Category = "Wheels",
		Options = {
			{
				Option = "Steelies",
				Bones = {
					{ Bone = "fl_wheel", Scale = 0, Position = Vector(0, 0, 0), Angles = Angle(0, 0, 0) },
					{ Bone = "fr_wheel", Scale = 0, Position = Vector(0, 0, 0), Angles = Angle(0, 0, 0) },
					{ Bone = "bl_wheel", Scale = 0, Position = Vector(0, 0, 0), Angles = Angle(0, 0, 0) },
					{ Bone = "br_wheel", Scale = 0, Position = Vector(0, 0, 0), Angles = Angle(0, 0, 0) },
				},
				Props = {
					{
						-- It took five hours to get these wheels exported in the correct orientation
						Model = "models/rin/95caprice/steelie/rin_steelies.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Bones = {
							["wheel_fl"] = { 
								Position = Vector( -2.7, 0, 0 ),
								Angles = Angle( 0, 0, 0 ),
								Scale = 1,
								Follow = { Attachment = "wheel_fl" }
							},
							["wheel_fr"] = { 
								Position = Vector( -2.7, 0, 0 ),
								Angles = Angle( 0, 0, 0 ),
								Scale = 1,
								Follow = { Attachment = "wheel_fr" }
							},
							["wheel_rl"] = { 
								Position = Vector( -2.7, 0, 0 ),
								Angles = Angle( 0, 0, 0 ),
								Scale = 1,
								Follow = { Attachment = "wheel_rl" }
							},
							["wheel_rr"] = { 
								Position = Vector( -2.7, 0, 0 ),
								Angles = Angle( 0, 0, 0 ),
								Scale = 1,
								Follow = { Attachment = "wheel_rr" }
								-- Follow = { Bone = "door_fl" }
							},
						},
					}	
				}
			}
		}
	},
	{
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				Props = {
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -35, 60.6),
						Angles = Angle( 0, 0, 2 ),
						Scale = 1
					},
					{
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 7.5, 15, 51),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 0, 0, -5),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 114, 12 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -123.2, 25.2 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 114.7, 12 ),
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
