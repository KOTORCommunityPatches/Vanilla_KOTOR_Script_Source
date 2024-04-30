void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	object oNpc_dhagon_thug = GetObjectByTag("npc_dhagon_thug", 0);
	DelayCommand(0.2, AssignCommand(GetFirstPC(), ActionMoveToObject(GetWaypointByTag("wp_dhagon_pc"), 0, 1.0)));
	AssignCommand(oNpc_dhagon_thug, ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	SetLocalBoolean(OBJECT_SELF, 40, 1);
}

