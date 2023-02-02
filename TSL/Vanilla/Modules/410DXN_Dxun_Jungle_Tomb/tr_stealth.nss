void main() {
	object oEntering = GetEnteringObject();
	if (IsStealthed(oEntering)) {
		return;
	}
	if ((!GetLocalBoolean(OBJECT_SELF, 55))) {
		SetLocalBoolean(OBJECT_SELF, 55, 1);
		object oG_sithtroop004;
		object oWp_patrol_walk3 = GetWaypointByTag("wp_patrol1");
		oG_sithtroop004 = CreateObject(1, "g_sithtroop004", GetLocation(oWp_patrol_walk3), 0);
		oWp_patrol_walk3 = GetWaypointByTag("wp_patrol_walk1");
		AssignCommand(oG_sithtroop004, ActionMoveToObject(oEntering, 1, 15.0));
		oWp_patrol_walk3 = GetWaypointByTag("wp_patrol2");
		oG_sithtroop004 = CreateObject(1, "g_sithtroop004", GetLocation(oWp_patrol_walk3), 0);
		oWp_patrol_walk3 = GetWaypointByTag("wp_patrol_walk2");
		AssignCommand(oG_sithtroop004, ActionMoveToObject(oEntering, 1, 15.0));
		oWp_patrol_walk3 = GetWaypointByTag("wp_patrol3");
		oG_sithtroop004 = CreateObject(1, "g_sithtroop004", GetLocation(oWp_patrol_walk3), 0);
		oWp_patrol_walk3 = GetWaypointByTag("wp_patrol_walk3");
		AssignCommand(oG_sithtroop004, ActionMoveToObject(oEntering, 1, 15.0));
		AurPostString("Alarm Set Off - stealth is over", 5, 5, 5.0);
		SetLocalBoolean(GetObjectByTag("power_gen_backup", 0), 45, 1);
		SetLocalBoolean(GetObjectByTag("power_gen", 0), 45, 1);
		SoundObjectPlay(GetObjectByTag("Alarm", 0));
	}
}
