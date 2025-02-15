if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2014 Ford E350 Ambulance LREMS"
VEHICLE.Vehicle		= "e350_vanbulance_sgm"
VEHICLE.Category 	= "Photon 2: LREMS"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			
			{
				Option = "Medic One",
				SubMaterials = {
					{ Id = 20, Material = "rin/lrems2/e350/medic_one" },
				},
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
			{
				Option = "Patlite AXS-12HM",
				Components = {
					{
                        Component = "patlite_axs12",
                        Position = Vector( 0, 30, 111.5 ),
                        Angles = Angle( -1, -90, 0 ),
                        Scale = 1.1,
                        Options = {
                            FeetWidthOffset = 0,
                            FeetTilt = 0,
                        },
					},
				}
			},
		}
	},
	{
		Category = "Front Flashers",
		Options = {
			{
				Option = "Osaka Siren LAF-150",
				Components = {
					{
						Component = "oss_laf150",
						Position = Vector( -22, 125.2, 34.5 ),
						BodyGroups = {
							["bracket"] = 0,
							["mount"] = 1,
						},
						Angles = Angle( 0, 3, 0 ),
						Scale = 1.0
					},
					{
						Component = "oss_laf150",
						Position = Vector( 22, 125.2, 34.5 ),
						BodyGroups = {
							["bracket"] = 0,
							["mount"] = 1,
						},
						Angles = Angle( 0, -3, 0 ),
						Scale = 1.0
					},
				}
			},
		}
	},
	{
		Category = "Rear Flashers",
		Options = {
			{
				Option = "Osaka Siren LAF-150",
				Components = {
					{
						Component = "oss_laf150",
						Position = Vector( -30, -122.5, 98.5 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, 180, 2 ),
						Scale = 1.0
					},
					{
						Component = "oss_laf150",
						Position = Vector( 30, -122.5, 98.5 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, 180, 2 ),
						Scale = 1.0
					},
				}
			},
		}
	},
}
