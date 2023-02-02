void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if ((!GetLocalBoolean(OBJECT_SELF, 40))) {
		object oWp_spawn_left2;
		object oSgren_ramp;
		oWp_spawn_left2 = GetWaypointByTag("wp_spawn_left1");
		oSgren_ramp = CreateObject(1, "g_sithtroop004", GetLocation(oWp_spawn_left2), 0);
		oWp_spawn_left2 = GetWaypointByTag("wp_spawnrun_left");
		AssignCommand(oSgren_ramp, ActionMoveToObject(oWp_spawn_left2, 1, 1.0));
		oWp_spawn_left2 = GetWaypointByTag("wp_spawn_left2");
		oSgren_ramp = CreateObject(1, "sgren_ramp", GetLocation(oWp_spawn_left2), 0);
		oWp_spawn_left2 = GetWaypointByTag("wp_spawnrun_left");
		AssignCommand(oSgren_ramp, ActionMoveToObject(oWp_spawn_left2, 1, 1.0));
		SetLocalBoolean(OBJECT_SELF, 40, 1);
		SetLocalBoolean(GetObjectByTag("tr_wave_right", 0), 40, 1);
	}
}
