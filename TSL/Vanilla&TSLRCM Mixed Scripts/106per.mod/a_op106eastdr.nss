void main() {
	object oTrafficEastDoor = GetObjectByTag("TrafficEastDoor", 0);
	SetLocked(oTrafficEastDoor, 0);
	CreateObject(1, "g_droid_mine_024", GetLocation(GetObjectByTag("WP_drd24_1", 0)), 0);
	CreateObject(1, "g_droid_mine_024", GetLocation(GetObjectByTag("WP_drd24_2", 0)), 0);
	CreateObject(1, "c_drdspyder001", GetLocation(GetObjectByTag("WP_drd01_1", 0)), 0);
	CreateObject(1, "c_drdspyder001", GetLocation(GetObjectByTag("WP_drd01_2", 0)), 0);
	CreateObject(1, "c_drdspyder001", GetLocation(GetObjectByTag("WP_drd01_3", 0)), 0);
	CreateObject(1, "c_drdspyder001", GetLocation(GetObjectByTag("WP_drd01_4", 0)), 0);
	CreateObject(1, "c_drdspyder001", GetLocation(GetObjectByTag("WP_drd01_5", 0)), 0);
	CreateObject(1, "c_drdspyder001", GetLocation(GetObjectByTag("WP_drd01_6", 0)), 0);
	CreateObject(1, "g_droid_mine_025", GetLocation(GetObjectByTag("WP_drd25_1", 0)), 0);
	CreateObject(1, "g_droid_mine_025", GetLocation(GetObjectByTag("WP_drd25_2", 0)), 0);
	CreateObject(1, "g_droid_mine_025", GetLocation(GetObjectByTag("WP_drd25_3", 0)), 0);
	CreateObject(1, "g_assassindrd002", GetLocation(GetObjectByTag("WP_drd02_2", 0)), 0);
	CreateObject(1, "g_assassindrd002", GetLocation(GetObjectByTag("WP_drd02_3", 0)), 0);
	DelayCommand(0.6, AssignCommand(oTrafficEastDoor, ActionOpenDoor(oTrafficEastDoor)));
}

