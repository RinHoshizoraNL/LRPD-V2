if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "Pierce Arrow Engine LRFD"
VEHICLE.Vehicle		= "arrowxt_sgm"
VEHICLE.Category 	= "Photon 2: LRFD"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			
			{
				Option = "Engine 4",
				SubMaterials = {
					{ Id = 11, Material = "rin/lrfd2/arrow_engine/engine_4" },
				},
			},
		}
	},
}
