void main() {
	ActionMoveToObject(GetWaypointByTag("WP_KELBORN_ST"), 1, 1.0);
	if ((GetGlobalNumber("402DXN_ScoutHunt") == 0)) {
		object oWp_om_2scout5spwn = GetWaypointByTag("wp_om_scout1spwn");
		CreateObject(1, "npc_scout1", GetLocation(oWp_om_2scout5spwn), 0);
		oWp_om_2scout5spwn = GetWaypointByTag("wp_om_scout2spwn");
		CreateObject(1, "npc_scout2", GetLocation(oWp_om_2scout5spwn), 0);
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		oWp_om_2scout5spwn = GetWaypointByTag("wp_om_2scout1spwn");
		CreateObject(1, "npc_2scout1", GetLocation(oWp_om_2scout5spwn), 0);
		oWp_om_2scout5spwn = GetWaypointByTag("wp_om_2scout2spwn");
		CreateObject(1, "npc_2scout2", GetLocation(oWp_om_2scout5spwn), 0);
		oWp_om_2scout5spwn = GetWaypointByTag("wp_om_2scout3spwn");
		CreateObject(1, "npc_2scout2", GetLocation(oWp_om_2scout5spwn), 0);
		oWp_om_2scout5spwn = GetWaypointByTag("wp_om_2scout4spwn");
		CreateObject(1, "npc_2scout2", GetLocation(oWp_om_2scout5spwn), 0);
		oWp_om_2scout5spwn = GetWaypointByTag("wp_om_2scout5spwn");
		CreateObject(1, "npc_2scout2", GetLocation(oWp_om_2scout5spwn), 0);
	}
	SetGlobalNumber("402DXN_ScoutHunt", 1);
}

