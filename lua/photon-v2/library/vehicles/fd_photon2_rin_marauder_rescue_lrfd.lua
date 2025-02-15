if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "Seagrave Marauder Rescue LRFD"
VEHICLE.Vehicle		= "seagrave_rescue_sgm"
VEHICLE.Category 	= "Photon 2: LRFD"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			
			{
				Option = "Rescue 1",
				SubMaterials = {
					{ Id = 12, Material = "rin/lrfd2/marauder_rescue/rescue_1" },
				},
			},
		}
	},
}
