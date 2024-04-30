void main() {
	object oTr_stealth = GetObjectByTag("tr_stealth", 0);
	if (GetLocalBoolean(oTr_stealth, 55)) {
		return;
	}
	SetLocalBoolean(oTr_stealth, 55, 1);
	object oG_sithtroop004;
	object oWp_patrol_walk3 = GetWaypointByTag("wp_patrol1");
	oG_sithtroop004 = CreateObject(1, "g_sithtroop004", GetLocation(oWp_patrol_walk3), 0);
	oWp_patrol_walk3 = GetWaypointByTag("wp_patrol_walk1");
	AssignCommand(oG_sithtroop004, ActionMoveToObject(GetPartyLeader(), 1, 10.0));
	oWp_patrol_walk3 = GetWaypointByTag("wp_patrol2");
	oG_sithtroop004 = CreateObject(1, "g_sithtroop004", GetLocation(oWp_patrol_walk3), 0);
	oWp_patrol_walk3 = GetWaypointByTag("wp_patrol_walk2");
	AssignCommand(oG_sithtroop004, ActionMoveToObject(GetPartyLeader(), 1, 10.0));
	oWp_patrol_walk3 = GetWaypointByTag("wp_patrol3");
	oG_sithtroop004 = CreateObject(1, "g_sithtroop004", GetLocation(oWp_patrol_walk3), 0);
	oWp_patrol_walk3 = GetWaypointByTag("wp_patrol_walk3");
	AssignCommand(oG_sithtroop004, ActionMoveToObject(GetPartyLeader(), 1, 10.0));
	AurPostString("Alarm Set Off - stealth is over", 5, 5, 5.0);
	SetLocalBoolean(GetObjectByTag("power_gen_backup", 0), 45, 1);
	SetLocalBoolean(GetObjectByTag("power_gen", 0), 45, 1);
}

