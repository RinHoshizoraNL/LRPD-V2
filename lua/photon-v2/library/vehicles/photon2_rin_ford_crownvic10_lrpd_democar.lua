---@diagnostic disable: missing-fields
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
				Option = "Lightbar Demo",
				Components = {
					{
						Component = "photon_fedsig_valor_44_lrpd",
						Position = Vector( 0, -19, 70 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						BodyGroups = {
							["Alley_hotfeet"] = 1,
							["Forward_hotfeet"] = 1,
						},
					},
					{
						Component = "photon_fedsig_valor_51_lrpd",
						Position = Vector( 0, -19, 120 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						BodyGroups = {
							["Alley_hotfeet"] = 1,
							["Forward_hotfeet"] = 1,
						},
					},
					{
						Component = "photon_fedsig_legend_lrpd",
						Position = Vector( 0, -25, 140 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[6] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( 18, -19, 80 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( -18, -19, 80 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Phase = 180,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( 18, -19, 90 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( -18, -19, 90 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Phase = 180,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "koito_flasher_lrpd",
						Position = Vector( 18, -19, 100 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[3] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "koito_flasher_lrpd",
						Position = Vector( -18, -19, 100 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Phase = 90,
						SubMaterials = {
							[3] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "oss_laf150_lrpd",
						Position = Vector( 18, -19, 110 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "schmal/photon/fedsig_legend/dome_r",
							[2] = "schmal/photon/fedsig_legend/dome_r",
						},
					},
					{
						Component = "oss_laf150_lrpd",
						Position = Vector( -18, -19, 110 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Phase = 180,
						SubMaterials = {
							[1] = "schmal/photon/fedsig_legend/dome_r",
							[2] = "schmal/photon/fedsig_legend/dome_r",
						},
					},
				}
			}
		}
	},
}