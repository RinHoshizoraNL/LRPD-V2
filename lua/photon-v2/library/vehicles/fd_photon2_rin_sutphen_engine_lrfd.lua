if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "Sutphen Monarch Engine LRFD"
VEHICLE.Vehicle		= "sutphen_engine_sgm"
VEHICLE.Category 	= "Photon 2: LRFD"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			
			{
				Option = "Engine 86",
				SubMaterials = {
					{ Id = 14, Material = "rin/lrfd2/sutphen_engine/engine_86" },
				},
			},
		}
	},
}
