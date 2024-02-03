void main() {
	if (GetLoadFromSaveGame()) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		if (GetGlobalBoolean("221TEL_Spawned")) {
			return;
		}
		SetGlobalBoolean("221TEL_Spawned", 1);
		if ((GetGlobalNumber("262TEL_HK_Factory") > 0)) {
			GiveXPToCreature(GetFirstPC(), 5000);
		}
		if ((GetGlobalNumber("500OND_DarkSide_Iziz") == 0)) {
			CreateObject(1, "221_riiken", GetLocation(GetObjectByTag("wp_ondlead_sp", 0)), 0);
		}
		if ((GetGlobalNumber("500OND_DarkSide_Iziz") > 0)) {
			CreateObject(1, "vaklu_lead", GetLocation(GetObjectByTag("wp_ondlead_sp", 0)), 0);
		}
		if ((GetGlobalNumber("200TEL_Control") == 1)) {
			CreateObject(1, "221_chodo", GetLocation(GetObjectByTag("wp_chodo_sp", 0)), 0);
			CreateObject(1, "221_moza", GetLocation(GetObjectByTag("wp_moza_sp", 0)), 0);
		}
		if ((GetGlobalNumber("602DAN_End") == 2)) {
			CreateObject(1, "mercenary", GetLocation(GetObjectByTag("wp_militia1_sp", 0)), 0);
			CreateObject(1, "mercenary", GetLocation(GetObjectByTag("wp_militia2_sp", 0)), 0);
			CreateObject(1, "mercenary", GetLocation(GetObjectByTag("wp_militia3_sp", 0)), 0);
		}
		else {
			CreateObject(1, "militia", GetLocation(GetObjectByTag("wp_militia1_sp", 0)), 0);
			CreateObject(1, "militia", GetLocation(GetObjectByTag("wp_militia2_sp", 0)), 0);
			CreateObject(1, "militia", GetLocation(GetObjectByTag("wp_militia3_sp", 0)), 0);
		}
	}
}

