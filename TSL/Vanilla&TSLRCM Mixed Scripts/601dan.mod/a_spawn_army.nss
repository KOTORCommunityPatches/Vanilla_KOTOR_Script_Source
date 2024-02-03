struct structtype1 {
	float float1;
	float float3;
};

void main() {
	AssignCommand(GetObjectByTag("npc_dillan", 0), ActionJumpToLocation(GetLocation(GetObjectByTag("wp_droidholo", 0))));
	AssignCommand(GetObjectByTag("npc_akkere", 0), ActionJumpToLocation(GetLocation(GetObjectByTag("wp_pc_holo", 0))));
	if (GetGlobalBoolean("601DAN_PC_DOOR_DEFEND")) {
		location location3 = Location(Vector(286.2346, 119.61914, 7.9642), 0.0);
		location location5 = Location(Vector(291.2346, 120.61914, 7.4942), 0.0);
		CreateObject(1, "g_militia004", GetLocation(GetWaypointByTag("wp_g_militia1")), 0);
		CreateObject(1, "g_militia005", GetLocation(GetWaypointByTag("wp_g_militia2")), 0);
		CreateObject(1, "g_militia004", GetLocation(GetWaypointByTag("wp_g_militia3")), 0);
		CreateObject(1, "g_militia005", GetLocation(GetWaypointByTag("wp_g_militia4")), 0);
		CreateObject(1, "g_militia004", GetLocation(GetWaypointByTag("wp_g_militia5")), 0);
		CreateObject(1, "g_militia005", GetLocation(GetWaypointByTag("wp_g_militia6")), 0);
		CreateObject(1, "g_militia004", GetLocation(GetWaypointByTag("wp_g_militia7")), 0);
		CreateObject(1, "g_militia005", GetLocation(GetWaypointByTag("wp_g_militia8")), 0);
		CreateObject(1, "g_militia004", GetLocation(GetWaypointByTag("wp_g_militia9")), 0);
		CreateObject(1, "g_militia005", GetLocation(GetWaypointByTag("wp_g_militia10")), 0);
		CreateObject(1, "g_militia010", GetLocation(GetWaypointByTag("sp_b_militia1")), 0);
		CreateObject(1, "g_militia010", GetLocation(GetWaypointByTag("sp_b_militia2")), 0);
		CreateObject(1, "g_militia010", GetLocation(GetWaypointByTag("sp_b_militia3")), 0);
		CreateObject(1, "g_militia010", GetLocation(GetWaypointByTag("sp_b_militia4")), 0);
		CreateObject(1, "g_militia010", GetLocation(GetWaypointByTag("sp_b_militia5")), 0);
		CreateObject(1, "g_militia010", GetLocation(GetWaypointByTag("sp_b_militia6")), 0);
		CreateObject(1, "g_militia010", GetLocation(GetWaypointByTag("sp_b_militia7")), 0);
		CreateObject(1, "g_merc_az001", GetLocation(GetWaypointByTag("sp_w_merc_az1")), 0);
		CreateObject(1, "g_merc_az003", GetLocation(GetWaypointByTag("sp_w_merc_az2")), 0);
		CreateObject(1, "g_merc_az001", GetLocation(GetWaypointByTag("sp_w_merc_az3")), 0);
		CreateObject(1, "g_merc_az003", GetLocation(GetWaypointByTag("sp_w_merc_az4")), 0);
		CreateObject(1, "g_merc_az001", GetLocation(GetWaypointByTag("sp_w_merc_az5")), 0);
		CreateObject(1, "g_merc_az003", GetLocation(GetWaypointByTag("sp_w_merc_az6")), 0);
		CreateObject(1, "g_merc_az001", GetLocation(GetWaypointByTag("sp_w_merc_az7")), 0);
		CreateObject(1, "g_merc_az003", GetLocation(GetWaypointByTag("sp_w_merc_az8")), 0);
		CreateObject(1, "g_merc_az001", GetLocation(GetWaypointByTag("sp_w_merc_az9")), 0);
		CreateObject(1, "g_merc_az003", GetLocation(GetWaypointByTag("sp_w_merc_az10")), 0);
		CreateObject(1, "g_merc_az001", GetLocation(GetWaypointByTag("sp_w_merc_az11")), 0);
		CreateObject(1, "g_merc_az003", GetLocation(GetWaypointByTag("sp_w_merc_az12")), 0);
		CreateObject(1, "g_merc_az001", location3, 0);
		CreateObject(1, "g_merc_az003", location5, 0);
		CreateObject(1, "g_merc_az002", GetLocation(GetWaypointByTag("sp_e_merc_az1")), 0);
		CreateObject(1, "g_merc_az002", GetLocation(GetWaypointByTag("sp_e_merc_az3")), 0);
		CreateObject(1, "g_merc_az002", GetLocation(GetWaypointByTag("sp_e_merc_az5")), 0);
		CreateObject(1, "g_merc_az002", GetLocation(GetWaypointByTag("sp_e_merc_az7")), 0);
		CreateObject(1, "g_merc_az002", GetLocation(GetWaypointByTag("sp_e_merc_az9")), 0);
	}
	else {
		location location41 = Location(Vector(390.14062, 113.19557, 7.04693), 180.0);
		location location43 = Location(Vector(402.91034, 105.89362, 9.10341), 180.0);
		location location45 = Location(Vector(391.03177, 119.61914, 6.8742), 180.0);
		location location47 = Location(Vector(395.03177, 124.61914, 6.8742), 180.0);
		location location49 = Location(Vector(394.2346, 124.61914, 6.8742), 180.0);
		location location51 = Location(Vector(393.2346, 125.61914, 6.8742), 180.0);
		CreateObject(1, "g_militia010", GetLocation(GetWaypointByTag("wp_g_militia1")), 0);
		CreateObject(1, "g_militia010", GetLocation(GetWaypointByTag("wp_g_militia2")), 0);
		CreateObject(1, "g_militia010", GetLocation(GetWaypointByTag("wp_g_militia3")), 0);
		CreateObject(1, "g_militia010", GetLocation(GetWaypointByTag("wp_g_militia4")), 0);
		CreateObject(1, "g_militia010", GetLocation(GetWaypointByTag("wp_g_militia5")), 0);
		CreateObject(1, "g_militia010", GetLocation(GetWaypointByTag("wp_g_militia6")), 0);
		CreateObject(1, "g_militia010", GetLocation(GetWaypointByTag("wp_g_militia7")), 0);
		CreateObject(1, "g_militia004", GetLocation(GetWaypointByTag("sp_b_militia1")), 0);
		CreateObject(1, "g_militia005", GetLocation(GetWaypointByTag("sp_b_militia2")), 0);
		CreateObject(1, "g_militia004", GetLocation(GetWaypointByTag("sp_b_militia3")), 0);
		CreateObject(1, "g_militia005", GetLocation(GetWaypointByTag("sp_b_militia4")), 0);
		CreateObject(1, "g_militia004", GetLocation(GetWaypointByTag("sp_b_militia5")), 0);
		CreateObject(1, "g_militia004", GetLocation(GetWaypointByTag("sp_b_militia6")), 0);
		CreateObject(1, "g_militia005", GetLocation(GetWaypointByTag("sp_b_militia7")), 0);
		CreateObject(1, "g_militia004", GetLocation(GetWaypointByTag("sp_b_militia8")), 0);
		CreateObject(1, "g_militia005", GetLocation(GetWaypointByTag("sp_b_militia9")), 0);
		CreateObject(1, "g_militia004", GetLocation(GetWaypointByTag("sp_b_militia10")), 0);
		CreateObject(1, "g_merc_az002", GetLocation(GetWaypointByTag("sp_w_merc_az1")), 0);
		CreateObject(1, "g_merc_az002", GetLocation(GetWaypointByTag("sp_w_merc_az2")), 0);
		CreateObject(1, "g_merc_az002", GetLocation(GetWaypointByTag("sp_w_merc_az3")), 0);
		CreateObject(1, "g_merc_az002", GetLocation(GetWaypointByTag("sp_w_merc_az4")), 0);
		CreateObject(1, "g_merc_az002", GetLocation(GetWaypointByTag("sp_w_merc_az5")), 0);
		CreateObject(1, "g_merc_az001", GetLocation(GetWaypointByTag("sp_e_merc_az1")), 0);
		CreateObject(1, "g_merc_az003", GetLocation(GetWaypointByTag("sp_e_merc_az2")), 0);
		CreateObject(1, "g_merc_az001", GetLocation(GetWaypointByTag("sp_e_merc_az3")), 0);
		CreateObject(1, "g_merc_az003", GetLocation(GetWaypointByTag("sp_e_merc_az4")), 0);
		CreateObject(1, "g_merc_az001", GetLocation(GetWaypointByTag("sp_e_merc_az5")), 0);
		CreateObject(1, "g_merc_az003", GetLocation(GetWaypointByTag("sp_e_merc_az6")), 0);
		CreateObject(1, "g_merc_az001", GetLocation(GetWaypointByTag("sp_e_merc_az7")), 0);
		CreateObject(1, "g_merc_az003", GetLocation(GetWaypointByTag("sp_e_merc_az8")), 0);
		CreateObject(1, "g_merc_az001", location41, 0);
		CreateObject(1, "g_merc_az003", location43, 0);
		CreateObject(1, "g_merc_az001", location45, 0);
		CreateObject(1, "g_merc_az003", location47, 0);
		CreateObject(1, "g_merc_az001", location49, 0);
		CreateObject(1, "g_merc_az003", location51, 0);
	}
}

