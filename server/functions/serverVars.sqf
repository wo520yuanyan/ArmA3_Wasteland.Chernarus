// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.1
//	@file Name: serverVars.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, [404] Pulse, [GoT] JoSchaap, MercyfulFate, AgentRev
//	@file Created: 20/11/2012 05:19
//	@file Args:

if (!isServer) exitWith {};

diag_log "WASTELAND SERVER - Initializing Server Vars";

#include "setupServerPVars.sqf"

currentStaticHelis = []; // Storage for the heli marker numbers so that we don't spawn wrecks on top of live helis

//Civilian Vehicle List - Random Spawns
civilianVehicles =
[
	"C_Quadbike_01_F",
	"rhs_tigr_vdv",
	"rhs_tigr_vv",
	"rhs_tigr_vmf",
	"rhs_uaz_vmf",
	"rhs_uaz_vdv",
	"rhs_uaz_vv",
	"rhs_uaz_msv"
];

//Light Military Vehicle List - Random Spawns
lightMilitaryVehicles =
[
	"B_Quadbike_01_F",
	"O_Quadbike_01_F",
	"I_Quadbike_01_F",
	"I_G_Quadbike_01_F",
//	"O_Truck_02_covered_F",
//	"I_Truck_02_covered_F",
//	"O_Truck_02_transport_F",
//	"I_Truck_02_transport_F",
	"rhsusf_m1025_w_s_m2"
];

//Medium Military Vehicle List - Random Spawns
mediumMilitaryVehicles =
[
//	"I_Truck_02_Fuel_F",
//	"O_Truck_02_Fuel_F",
//	"I_Truck_02_medical_F",
//	"O_Truck_02_medical_F",
//	"B_MRAP_01_F",
//	"O_MRAP_02_F",
//	"I_MRAP_03_F"
	"rhsusf_m1025_w_s",
	"rhsusf_m998_w_s_4dr"
	
];

//Water Vehicles - Random Spawns
waterVehicles =
[
//	"B_Lifeboat",
//	"O_Lifeboat",
//	"C_Rubberboat",
//	"B_SDV_01_F",
//	"O_SDV_01_F",
//	"I_SDV_01_F",
//	"B_Boat_Transport_01_F",
//	"O_Boat_Transport_01_F",
//	"I_Boat_Transport_01_F",
//	"I_G_Boat_Transport_01_F",
	"B_Boat_Armed_01_minigun_F",
	"O_Boat_Armed_01_hmg_F",
	"I_Boat_Armed_01_minigun_F",
	"C_Boat_Civil_01_F",
	"C_Boat_Civil_01_police_F",
	"C_Boat_Civil_01_rescue_F"
];

//Essential List - Random Spawns.
essentialsList =
[
	"B_supplyCrate_F",
	"Land_Sacks_goods_F",
	"Land_BarrelWater_F"
];

//Object List - Random Spawns.
objectList =
[
	"B_supplyCrate_F",
	"B_supplyCrate_F",
	"CamoNet_INDP_open_F",
	"CamoNet_INDP_open_F",
	"Land_BagBunker_Large_F",
	"Land_BagBunker_Large_F",
	"Land_BagBunker_Small_F",
	"Land_BagBunker_Small_F",
	"Land_BagBunker_Tower_F",
	"Land_BagBunker_Tower_F",
	"Land_BarGate_F",
	"Land_Canal_Wall_Stairs_F",
	"Land_Canal_WallSmall_10m_F",
	"Land_Canal_WallSmall_10m_F",
	"Land_CncBarrierMedium4_F",
	"Land_CncShelter_F",
	"Land_CncWall4_F",
	"Land_HBarrier_1_F",
	"Land_HBarrier_3_F",
	"Land_HBarrier_5_F",
	"Land_HBarrier_5_F",
	"Land_HBarrier_5_F",
	"Land_HBarrierBig_F",
	"Land_HBarrierBig_F",
	"Land_HBarrierBig_F",
	"Land_HBarrierBig_F",
	"Land_HBarrierTower_F",
	"Land_HBarrierWall4_F",
	"Land_HBarrierWall4_F",
	"Land_HBarrierWall6_F",
	"Land_HBarrierWall6_F",
	"Land_MetalBarrel_F",
	"Land_Mil_ConcreteWall_F",
	"Land_Mil_WallBig_4m_F",
	"Land_Mil_WallBig_4m_F",
	"Land_Mil_WallBig_4m_F",
	"Land_Pipes_large_F",
	"Land_RampConcrete_F",
	"Land_RampConcreteHigh_F",
	"Land_Sacks_goods_F",
	"Land_Shoot_House_Wall_F",
	"Land_BarrelWater_F"
];

//Object List - Random Spawns.
staticWeaponsList =
[
	"B_Mortar_01_F",
	"O_Mortar_01_F",
	"I_Mortar_01_F",
	"I_G_Mortar_01_F"
];

//Object List - Random Helis.
staticHeliList =
[
	"B_Heli_Light_01_F",
	"rhs_ka60_c"
	// don't put cargo helicopters here, it doesn't make sense to find them in towns; they spawn in the CivHeli mission
];

//Object List - Random Planes.
staticPlaneList =
[
	"B_Plane_CAS_01_F",
	"O_Plane_CAS_02_F",
	"I_Plane_Fighter_03_CAS_F"
];

//Random Weapon List - Change this to what you want to spawn in cars.
vehicleWeapons =
[
//	"hgun_P07_F",
//	"hgun_Rook40_F",
//	"hgun_ACPC2_F",
//	"arifle_SDAR_F",
	"rhs_weap_m4a1",
	"rhs_weap_m4a1_grip2",
	"rhs_weap_m4a1_bipod",
	"rhs_weap_m4a1_grip",
	"rhs_m4a1_m320",
	"rhs_weap_m16a4",
	"rhs_weap_m16a4_carryhandle",
	"rhs_weap_m249_pip",
	"rhs_weap_m240B",
	"rhs_weap_M320",
	"rhs_weap_ak74m_gp25",
	"rhs_weap_ak74m_2mag_camo",
	"rhs_weap_ak74m_desert",
	"rhs_weap_ak74m_folded",
	"rhs_weap_pkp",
  "hlc_smg_mp5a2",
  "hlc_smg_mp510",
  "hlc_rifle_augpara",
  "hlc_rifle_M14",
  "hlc_rifle_akm",
  "hlc_rifle_FAL5061",
  "hlc_rifle_g3a3",
  "hlc_rifle_aug",
  "rhs_weap_m249_pip",
  "hlc_rifle_l1a1slr",
  "hlc_rifle_hk53"
];

vehicleAddition =
[
	"rhs_acc_tgpa",
	"rhsusf_acc_M2010S",
	"rhs_acc_1p29",
	"rhs_acc_1p63",
	"rhs_acc_ekp1",
	"rhs_acc_pgo7v",
	"rhs_acc_pkas",
	"rhs_acc_pso1m2",
	"rhsusf_acc_anpeq15",
	"rhsusf_acc_anpeq15A",
	"rhsusf_acc_anpeq15_light",
	"rhsusf_acc_EOTECH",
	"rhsusf_acc_compm4",
	"rhsusf_acc_ACOG2",
	"rhsusf_acc_ACOG",
	"Medikit",
	"Medikit",
	"FirstAidKit",
	"ToolKit"
];

vehicleAddition2 =
[
	"rhs_mag_m67",
	"rhs_ammo_m84",
	"rhs_mag_rgd5",
	"rhs_mag_fakels",
	"rhs_mag_nspn_green"
];

// crate type, crate class, maximum weapons, weapon attachments, maximum items
boxSpawningTypes = [
  ["west_basic", "rhsusf_weapons_crate", 5, 1, 2],
  ["west_special", "rhsusf_weapons_crate", 4, 1, 2],
  ["west_explosive", "rhsusf_weapons_crate", 2, 0, 6],
  ["east_basic", "rhs_weapons_crate_ak", 5, 1, 2],
  ["east_special", "rhs_weapons_crate_ak", 4, 1, 2],
  ["east_explosive", "rhs_weapons_crate_ak", 2, 0, 6],
  ["ind_basic", "Box_IND_Wps_F", 5, 1, 2],
  ["ind_special", "Box_IND_WpsSpecial_F", 4, 1, 2]
];

boxSpawningWeapons = [
  ["rhs_weap_m4a1", ["west_basic"]],
  ["rhs_weap_m4a1_grip2", ["west_basic"]],
  ["rhs_weap_m4a1_bipod", ["west_basic"]],
  ["rhs_weap_m4a1_grip", ["west_basic"]],
  ["rhs_m4a1_m320", ["west_basic"]],
  ["rhs_weap_m16a4", ["west_basic"]],
  ["rhs_weap_m16a4_carryhandle", ["west_basic"]],
  ["rhs_weap_m249_pip", ["west_basic"]],
  ["rhs_weap_m240B", ["west_basic"]],
  ["rhs_weap_M320", ["west_basic"]],
  ["hlc_rifle_M14", ["west_basic"]],
  ["rhs_weap_m249_pip", ["west_basic"]],

  ["rhs_weap_ak74m_gp25", ["east_basic"]],
  ["rhs_weap_ak74m_2mag_camo", ["east_basic"]],
  ["rhs_weap_ak74m_desert", ["east_basic"]],
  ["rhs_weap_ak74m_folded", ["east_basic"]],
  ["rhs_weap_pkp", ["east_basic"]],
  ["hlc_rifle_akm", ["east_basic"]],
  
  ["hlc_smg_mp5a2", ["ind_basic"]],
  ["hlc_smg_mp510", ["ind_basic"]],
  ["hlc_rifle_augpara", ["ind_basic"]],
  ["hlc_rifle_FAL5061", ["ind_basic"]],
  ["hlc_rifle_g3a3", ["ind_basic"]],
  ["hlc_rifle_aug", ["ind_basic"]],
  ["hlc_rifle_l1a1slr", ["ind_basic"]],
  ["hlc_rifle_hk53", ["ind_basic"]]
];

boxSpawningItems = [
  ["rhs_mag_mk3a2", ["west_basic", "west_explosive"]],
  ["rhs_mag_mk84", ["west_special", "west_explosive"]],
  ["rhs_mag_m67", ["west_basic", "west_special", "west_explosive"]],
  ["rhs_mag_an_m14_th3", ["west_explosive"]],
  ["rhs_mine_M19_ammo", ["west_explosive"]],

  ["rhs_mag_rgd5", ["east_basic", "east_special", "east_explosive"]],
  ["rhs_mag_fakel", ["east_special", "east_explosive"]],
  ["rhs_mag_fakels", ["east_special", "east_explosive"]],
  ["rhs_mag_zarya2", ["east_explosive"]],
  ["rhs_mag_plamyam", ["east_explosive"]],
  ["rhs_mine_pmn2", ["east_explosive"]],
  ["rhs_mine_tm62m", ["east_explosive"]]
];


// params
// 0 - random weapon amount
// 1 - random item amount
// 2 - 


