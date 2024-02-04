void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if ((!GetLocalBoolean(GetObjectByTag("exit_door", 0), 46))) {
		if (GetLocalBoolean(GetObjectByTag("exit_door", 0), 45)) {
			SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
			SetFadeUntilScript();
			object oWp_no_exit_npc1 = GetObjectByTag("wp_no_exit_npc1", 0);
			object oWp_no_exit_npc2 = GetObjectByTag("wp_no_exit_npc2", 0);
			object oWp_no_exit_npc3 = GetObjectByTag("wp_no_exit_npc3", 0);
			object oNPC = GetPartyMemberByIndex(0);
			object object13 = GetPartyMemberByIndex(1);
			object object15 = GetPartyMemberByIndex(2);
			if (GetIsObjectValid(oNPC)) {
				AssignCommand(oNPC, ClearAllActions());
				AssignCommand(oNPC, ActionJumpToLocation(GetLocation(oWp_no_exit_npc1)));
			}
			if (GetIsObjectValid(object13)) {
				AssignCommand(object13, ClearAllActions());
				AssignCommand(object13, ActionJumpToLocation(GetLocation(oWp_no_exit_npc2)));
			}
			if (GetIsObjectValid(object15)) {
				AssignCommand(object15, ClearAllActions());
				AssignCommand(object15, ActionJumpToLocation(GetLocation(oWp_no_exit_npc3)));
			}
			SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
			DelayCommand(0.1, AssignCommand(GetFirstPC(), ClearAllActions()));
			DelayCommand(0.1, AssignCommand(GetFirstPC(), ActionBarkString(128414)));
		}
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetGlobalFadeIn(1.0, 1.5, 0.0, 0.0, 0.0);
	object oWp_end_xarga = GetObjectByTag("wp_end_pc", 0);
	AssignCommand(oEntering, ClearAllActions());
	DelayCommand(0.1, AssignCommand(oEntering, ActionJumpToObject(oWp_end_xarga, 1)));
	object oXarga = GetObjectByTag("xarga", 0);
	oWp_end_xarga = GetObjectByTag("wp_end_xarga", 0);
	AssignCommand(oXarga, ClearAllActions());
	DelayCommand(0.1, AssignCommand(oXarga, ActionJumpToObject(oWp_end_xarga, 1)));
	DelayCommand(0.5, AssignCommand(oXarga, ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}