void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	object oVaklu_troop_cs = GetObjectByTag("vaklu_troop_cs", 0);
	DelayCommand(0.2, AssignCommand(GetFirstPC(), ActionMoveToObject(GetWaypointByTag("wp_interrogate_pc"), 0, 1.0)));
	AssignCommand(oVaklu_troop_cs, ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	SetLocalBoolean(OBJECT_SELF, 40, 1);
}

