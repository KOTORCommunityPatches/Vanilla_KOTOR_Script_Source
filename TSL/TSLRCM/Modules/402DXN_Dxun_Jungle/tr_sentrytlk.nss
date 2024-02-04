void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (((GetGlobalNumber("402DXN_Davrel_Fate") == 1) && GetIsObjectValid(GetObjectByTag("npc_davrel", 0)))) {
		SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
		SetFadeUntilScript();
		object oNearestWp_no_exit_npc1 = GetNearestObjectByTag("wp_no_exit_npc1", OBJECT_SELF, 1);
		object oWp_no_exit_npc2 = GetObjectByTag("wp_no_exit_npc2", 0);
		object oWp_no_exit_npc3 = GetObjectByTag("wp_no_exit_npc3", 0);
		object oNPC = GetPartyMemberByIndex(0);
		object object12 = GetPartyMemberByIndex(1);
		object object14 = GetPartyMemberByIndex(2);
		if (GetIsObjectValid(oNPC)) {
			AssignCommand(oNPC, ClearAllActions());
			AssignCommand(oNPC, ActionJumpToLocation(GetLocation(oNearestWp_no_exit_npc1)));
		}
		if (GetIsObjectValid(object12)) {
			AssignCommand(object12, ClearAllActions());
			AssignCommand(object12, ActionJumpToLocation(GetLocation(oWp_no_exit_npc2)));
		}
		if (GetIsObjectValid(object14)) {
			AssignCommand(object14, ClearAllActions());
			AssignCommand(object14, ActionJumpToLocation(GetLocation(oWp_no_exit_npc3)));
		}
		SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
		object oNpc_davrel = GetObjectByTag("npc_davrel", 0);
		AssignCommand(oNpc_davrel, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	if ((GetGlobalNumber("402DXN_Sentry_Talk") == 1)) {
		return;
	}
	SetGlobalNumber("402DXN_Sentry_Talk", 1);
	SetMapPinEnabled(GetObjectByTag("mn_mandy_sentry", 0), 1);
	DelayCommand(0.1, AssignCommand(GetFirstPC(), ActionJumpToObject(GetWaypointByTag("WP_SENTRYTLK_PC2"), 1)));
	DelayCommand(0.2, AssignCommand(GetFirstPC(), ActionMoveToObject(GetWaypointByTag("WP_SENTRYTLK"), 0, 1.0)));
	AssignCommand(GetObjectByTag("sentry_standin", 0), ActionStartConversation(GetFirstPC(), "sentry", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}