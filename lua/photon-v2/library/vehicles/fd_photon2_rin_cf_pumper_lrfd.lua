if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "Mack CF Pumper LRFD"
VEHICLE.Vehicle		= "mackcf_sgm"
VEHICLE.Category 	= "Photon 2: LRFD"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			
			{
				Option = "Pumper 72",
				SubMaterials = {
					{ Id = 3, Material = "rin/lrfd2/cf_pumper/pumper_72" },
				},
			},
		}
	},
}
