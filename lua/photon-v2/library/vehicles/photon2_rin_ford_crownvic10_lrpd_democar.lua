if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2010 Ford Crown Victoria LRPD DEMO"
VEHICLE.Vehicle		= "cvpi_hd_sgm"
VEHICLE.Category 	= "Photon 2: LRPD"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
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
}