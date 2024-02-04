void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	object oG_riiken;
	object oWp_riiken_amb_2;
	oG_riiken = GetObjectByTag("g_riiken", 0);
	oWp_riiken_amb_2 = GetObjectByTag("wp_riiken_amb_1", 0);
	AssignCommand(oG_riiken, ActionJumpToObject(oWp_riiken_amb_2, 1));
	oWp_riiken_amb_2 = GetObjectByTag("wp_riiken_amb_2", 0);
	AssignCommand(oG_riiken, ActionMoveToObject(oWp_riiken_amb_2, 0, 1.0));
	ActionStartConversation(oEntering, "riik_amb", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0);
}