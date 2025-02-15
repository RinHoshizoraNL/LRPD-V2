if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1986 Ford F150 Ambulance LREMS"
VEHICLE.Vehicle		= "86f150_ambu_sgm"
VEHICLE.Category 	= "Photon 2: LREMS"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			
			{
				Option = "Ambulance",
				SubMaterials = {
					{ Id = 22, Material = "rin/lrems2/f150_86/ambo" },
				},
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
            {
				Option = "Patlite AJS-12",
				Components = {
					{
                        Component = "patlite_ajs12",
                        Position = Vector( 0, 0, 90.9 ),
                        Angles = Angle( -1, -90, 0 ),
                        Scale = 1.2,
						Options = {
                            FeetWidthOffset = 4,
                            FeetTilt = -3,
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
				Option = "Front Flashers",
				Components = {
					{
						Component = "koito_flasher_lrpd",
						Position = Vector( 15, 102, 33.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Component = "koito_flasher_lrpd",
						Position = Vector( -15, 102, 33.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Phase = 90,
					},
				}
			}
		}
	},
}
