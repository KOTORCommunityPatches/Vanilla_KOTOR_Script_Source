void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(GetObjectByTag("To_403", 0), 30)) {
		SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
		SetFadeUntilScript();
		object oNearestWp_no_exit_npc1 = GetNearestObjectByTag("wp_no_exit_npc1", oEntering, 1);
		object oNPC = GetPartyMemberByIndex(0);
		if (GetIsObjectValid(oNPC)) {
			AssignCommand(oNPC, ClearAllActions());
			AssignCommand(oNPC, ActionJumpToLocation(GetLocation(oNearestWp_no_exit_npc1)));
		}
		SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
		DelayCommand(0.1, AssignCommand(GetFirstPC(), ClearAllActions()));
		DelayCommand(0.1, AssignCommand(GetFirstPC(), ActionBarkString(128414)));
		return;
	}
	if (GetGlobalBoolean("402DXN_SentryPost")) {
		return;
	}
	if ((GetGlobalNumber("403DXN_Camp_Visited") >= 1)) {
		return;
	}
	if ((GetGlobalNumber("402DXN_Sentry_Killer") == 0)) {
		return;
	}
	AurPostString("Trigger triggered", 5, 5, 5.0);
	object oSentry2_standin = GetObjectByTag("sentry2_standin", 0);
	AssignCommand(oSentry2_standin, ActionStartConversation(oEntering, "sentry2", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}