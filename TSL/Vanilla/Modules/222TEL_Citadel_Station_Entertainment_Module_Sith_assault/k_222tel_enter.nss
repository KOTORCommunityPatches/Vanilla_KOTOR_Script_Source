void main() {
	if (GetLoadFromSaveGame()) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		if (GetGlobalBoolean("222TEL_Spawned")) {
			return;
		}
		SetGlobalBoolean("222TEL_Spawned", 1);
		if ((GetGlobalNumber("500OND_DarkSide_Iziz") == 0)) {
			CreateObject(1, "talia_door", GetLocation(GetObjectByTag("wp_onddoor_sp", 0)), 0);
			CreateObject(1, "talia_sold", GetLocation(GetObjectByTag("wp_ondsold1_sp", 0)), 0);
			CreateObject(1, "talia_sold", GetLocation(GetObjectByTag("wp_ondsold2_sp", 0)), 0);
			CreateObject(1, "talia_wound", GetLocation(GetObjectByTag("wp_woundsold_sp", 0)), 0);
		}
		if ((GetGlobalNumber("500OND_DarkSide_Iziz") > 0)) {
			CreateObject(1, "vaklu_door", GetLocation(GetObjectByTag("wp_onddoor_sp", 0)), 0);
			CreateObject(1, "vaklu_sold", GetLocation(GetObjectByTag("wp_ondsold1_sp", 0)), 0);
			CreateObject(1, "vaklu_sold", GetLocation(GetObjectByTag("wp_ondsold2_sp", 0)), 0);
			CreateObject(1, "vaklu_wound", GetLocation(GetObjectByTag("wp_woundsold_sp", 0)), 0);
		}
	}
}
