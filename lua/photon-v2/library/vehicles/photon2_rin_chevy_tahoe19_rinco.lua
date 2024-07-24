if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2019 Chevrolet Tahoe Rinco"
VEHICLE.Vehicle		= "19tahoe_sgm"
VEHICLE.Category 	= "Photon 2: LR Highway"
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
				Option = "Rinco",
				SubMaterials = {
					{ Id = 21, Material = "rin/rinco_hwy/tahoe19/rinco" }
				}
			},
		}
	},
    {
		Category = "Spotlight",
		Options = {
			{
				Option = "Roof Spotlight",
				Components = {
					{
						Component = "photon_golight_2000gt",
						Position = Vector( 0, -9, 90.3 ),
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
					{ BodyGroup = "pushbar", Value = 0 },
					{ BodyGroup = "windowbars", Value = 0 },
					{ BodyGroup = "partition", Value = 0 },
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
				Option = "Whelen Legacy",
				Components = {
					{
						Component = "photon_whe_legacy_54",
						Position = Vector( 0, -9, 88.5 ),
						Angles = Angle( 1.5, 90, 0 ),
						Scale = .97
					},
				}
			}
		}
	},
	{
		Category = "Front Flashers",
		Options = {
			{
				Option = "Patlite LP5",
				Components = {
					{
						Name = "@grille_lp5",
						Component = "photon_patlite_lp5_rin",
						Position = Vector( -15, 118, 43.85 ),
						Angles = Angle( 1.5, 8, 0 ),
						Scale = 1,
						StateMap = "[R] 1",
						Phase = "A",
						InputActions = {
							["Emergency.Warning"] = {
								["MODE1"] = { Light = "FLASH4" },
								["MODE2"] = { Light = "FLASH4" },
								["MODE3"] = { Light = "FLASH4" },
							},
						}
					},
					{
						Inherit = "@grille_lp5",
						Position = Vector( 15, 118, 43.85 ),
						Angles = Angle( -1.5, -8, 0 ),
						Phase = "A",
						StateMap = "[R] 1"
					}
				}
			}
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
		Category = "Wheels",
		Options = {
			{
				Option = "18' ALY5646",
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
			 },
		   {
			  Option = "20' ALY5657",
			  Props = {
				{
				Model = "models/supermighty/mesh/wheel/tahoe_wheel2.mdl",
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
					Model = "models/supermighty/mesh/wheel/tahoe_wheel2.mdl",
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
					Model = "models/supermighty/mesh/wheel/tahoe_wheel2.mdl",
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
					Model = "models/supermighty/mesh/wheel/tahoe_wheel2.mdl",
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
		   },
		   {
			Option = "20' ALY5652U80HH",
			Props = {
			  {
			  Model = "models/supermighty/mesh/wheel/tahoe_wheel3.mdl",
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
				  Model = "models/supermighty/mesh/wheel/tahoe_wheel3.mdl",
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
				  Model = "models/supermighty/mesh/wheel/tahoe_wheel3.mdl",
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
				  Model = "models/supermighty/mesh/wheel/tahoe_wheel3.mdl",
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
		 },
		 {
			Option = "17' ALY5647U79",
			Props = {
			  {
			  Model = "models/supermighty/mesh/wheel/tahoe_wheel4.mdl",
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
				  Model = "models/supermighty/mesh/wheel/tahoe_wheel4.mdl",
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
				  Model = "models/supermighty/mesh/wheel/tahoe_wheel4.mdl",
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
				  Model = "models/supermighty/mesh/wheel/tahoe_wheel4.mdl",
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
		 },
		 {
			Option = "18' SSV",
			Props = {
			  {
			  Model = "models/supermighty/mesh/wheel/tahoe_ssv_wheel.mdl",
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
				  Model = "models/supermighty/mesh/wheel/tahoe_ssv_wheel.mdl",
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
				  Model = "models/supermighty/mesh/wheel/tahoe_ssv_wheel.mdl",
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
				  Model = "models/supermighty/mesh/wheel/tahoe_ssv_wheel.mdl",
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
		 },
		   	{
			Option = "18' PPV",
			Props = {
			},
			Bones = {
				{
				   Bone = "fl_wheel",
				   Position = Vector(-0, 0, 0),
				   Angles = Angle(0, 0, 0),
				   -- Makes the front-left wheel 2x normal size
				   Scale = 1
				},
				{
				   Bone = "fr_wheel",
				   Position = Vector(-0, 0, 0),
				   Angles = Angle(0, 0, 0),
				   -- Makes the front-left wheel 2x normal size
				   Scale = 1
				},
				{
				   Bone = "br_wheel",
				   Position = Vector(0, 0, 0),
				   Angles = Angle(0, 0, 0),
				   -- Makes the front-left wheel 2x normal size
				   Scale = 1
				},
				{
				   Bone = "bl_wheel",
				   Position = Vector(0, 0, 0),
				   Angles = Angle(0, 0, 0),
				   -- Makes the front-left wheel 2x normal size
				   Scale = 1
				},
			 }
		 },
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
						Name = "Bowtie",
						Model = "models/supermighty/mesh/tahoe/tahoe_bowtie.mdl",
						Position = Vector( 22, -32.9, 0 ),
						Angles = Angle( 90, 90, 0 ),
						Scale = 1,
						FollowBone = "trunk",
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -123.2, 47 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/rinco_hwy/props/plate_state",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 123.6, 22.1 ),
						Angles = Angle( 4, 90, 0 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/rinco_hwy/props/plate_state",
						},
					},
				}
			}
		}
	},
}
