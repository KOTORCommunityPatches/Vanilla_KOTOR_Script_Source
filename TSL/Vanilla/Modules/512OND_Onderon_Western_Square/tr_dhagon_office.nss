void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if ((GetLocalBoolean(OBJECT_SELF, 40) || (GetGlobalNumber("503OND_Cap_Murder") == 8))) {
		return;
	}
	object oNpc_dhagon_thug = GetObjectByTag("npc_dhagon_thug", 0);
	ExecuteScript("k_bhunt1_spwn", OBJECT_SELF, 0xFFFFFFFF);
	DelayCommand(0.2, AssignCommand(GetFirstPC(), ActionMoveToObject(GetWaypointByTag("wp_dhagon_pc"), 0, 1.0)));
	AssignCommand(oNpc_dhagon_thug, ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	SetLocalBoolean(OBJECT_SELF, 40, 1);
	SetLocalBoolean(GetObjectByTag("tr_bh_cv", 0), 55, 1);
}
