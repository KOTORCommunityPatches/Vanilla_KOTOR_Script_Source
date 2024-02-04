void main() {
	int nGlobal = GetGlobalNumber("402DXN_Scouts_Dead");
	SetGlobalNumber("402DXN_Scouts_Dead", (nGlobal + 1));
	if ((nGlobal == 5)) {
		object oWp_scoutdie3 = GetWaypointByTag("wp_scoutdie1");
		CreateObject(1, "npc_2scout002", GetLocation(oWp_scoutdie3), 0);
		oWp_scoutdie3 = GetWaypointByTag("wp_scoutdie2");
		CreateObject(1, "npc_2scout002", GetLocation(oWp_scoutdie3), 0);
		oWp_scoutdie3 = GetWaypointByTag("wp_scoutdie3");
		CreateObject(1, "npc_2scout002", GetLocation(oWp_scoutdie3), 0);
		AddJournalQuestEntry("scouthunt", 40, 0);
	}
}