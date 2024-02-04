void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(GetObjectByTag("tr_no_exit", 0), 30)) {
		SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
		SetFadeUntilScript();
		object oNearestWp_no_exit_npc1 = GetNearestObjectByTag("wp_no_exit_npc1", OBJECT_SELF, 1);
		object oNearestWp_no_exit_npc2 = GetNearestObjectByTag("wp_no_exit_npc2", OBJECT_SELF, 1);
		object oNearestWp_no_exit_npc3 = GetNearestObjectByTag("wp_no_exit_npc3", OBJECT_SELF, 1);
		object oNearestWp_drexl_boss = GetNearestObjectByTag("wp_drexl_boss", OBJECT_SELF, 1);
		object oNPC = GetPartyMemberByIndex(0);
		object object14 = GetPartyMemberByIndex(1);
		object object16 = GetPartyMemberByIndex(2);
		if (GetIsObjectValid(oNPC)) {
			AssignCommand(oNPC, ClearAllActions());
			AssignCommand(oNPC, ActionJumpToLocation(GetLocation(oNearestWp_no_exit_npc1)));
		}
		if (GetIsObjectValid(object14)) {
			AssignCommand(object14, ClearAllActions());
			AssignCommand(object14, ActionJumpToLocation(GetLocation(oNearestWp_no_exit_npc2)));
		}
		if (GetIsObjectValid(object16)) {
			AssignCommand(object16, ClearAllActions());
			AssignCommand(object16, ActionJumpToLocation(GetLocation(oNearestWp_no_exit_npc3)));
		}
		object oDrexl_boss = GetObjectByTag("drexl_boss", 0);
		if (GetIsObjectValid(oDrexl_boss)) {
			AssignCommand(oDrexl_boss, ClearAllActions());
			AssignCommand(oDrexl_boss, ActionJumpToLocation(GetLocation(oNearestWp_drexl_boss)));
			AssignCommand(oDrexl_boss, DelayCommand(1.0, ActionAttack(GetFirstPC(), 0)));
		}
		SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
		DelayCommand(0.1, AssignCommand(GetFirstPC(), ClearAllActions()));
		DelayCommand(0.1, AssignCommand(GetFirstPC(), ActionBarkString(128414)));
		return;
	}
}