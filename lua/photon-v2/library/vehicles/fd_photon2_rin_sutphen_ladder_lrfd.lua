if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "Sutphen SPH100 Ladder LRFD"
VEHICLE.Vehicle		= "sutphen_ladder_sgm"
VEHICLE.Category 	= "Photon 2: LRFD"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			
			{
				Option = "Ladder 2",
				SubMaterials = {
					{ Id = 11, Material = "rin/lrfd2/sutphen_ladder/ladder_2" },
				},
			},
		}
	},
}
