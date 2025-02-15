if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "Pierce Arrow Tanker LRFD"
VEHICLE.Vehicle		= "arrowxt_rescue_sgm"
VEHICLE.Category 	= "Photon 2: LRFD"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			
			{
				Option = "Tanker 9",
				SubMaterials = {
					{ Id = 12, Material = "rin/lrfd2/arrow_tanker/tanker_9" },
				},
			},
		}
	},
}
