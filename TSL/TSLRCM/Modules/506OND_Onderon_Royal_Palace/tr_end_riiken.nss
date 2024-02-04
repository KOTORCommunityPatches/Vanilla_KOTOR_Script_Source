void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if ((GetGlobalNumber("500OND_DarkSide_Iziz") == 1)) {
		return;
	}
	object oG_riiken = GetObjectByTag("g_riiken", 0);
	if ((!GetLocalBoolean(oG_riiken, 53))) {
		return;
	}
	object oPC = GetFirstPC();
	object oWp_end_pc;
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetGlobalFadeIn(0.5, 1.5, 0.0, 0.0, 0.0);
	AssignCommand(oPC, ClearAllActions());
	oWp_end_pc = GetObjectByTag("wp_end_pc", 0);
	AssignCommand(oPC, ActionJumpToObject(oWp_end_pc, 1));
	DelayCommand(0.1, AssignCommand(oG_riiken, ActionStartConversation(oPC, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}