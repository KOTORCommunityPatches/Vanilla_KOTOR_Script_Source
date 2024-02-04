void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	object oCp_guard = GetObjectByTag("cp_guard", 0);
	if ((GetGlobalNumber("502OND_End_First") == 2)) {
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		SetGlobalFadeIn(0.3, 2.0, 0.0, 0.0, 0.0);
		AssignCommand(GetFirstPC(), ClearAllActions());
		AssignCommand(GetFirstPC(), ActionJumpToObject(GetObjectByTag("wp_end_pc", 0), 1));
		DelayCommand(0.1, AssignCommand(oCp_guard, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
	if ((!GetLocalBoolean(oCp_guard, 40))) {
		AssignCommand(oCp_guard, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		SetLocalBoolean(oCp_guard, 40, 1);
	}
}