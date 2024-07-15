void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	int nGlobal = GetGlobalNumber("403DXN_Sith_Attack");
	if (((nGlobal == 0) || (nGlobal == 5))) {
		return;
	}
	SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
	SetFadeUntilScript();
	object oWp_no_exit_npc1 = GetObjectByTag("wp_no_exit_npc1", 0);
	object oWp_no_exit_npc2 = GetObjectByTag("wp_no_exit_npc2", 0);
	object oWp_no_exit_npc3 = GetObjectByTag("wp_no_exit_npc3", 0);
	object oNPC = GetPartyMemberByIndex(0);
	object object11 = GetPartyMemberByIndex(1);
	object object13 = GetPartyMemberByIndex(2);
	if (GetIsObjectValid(oNPC)) {
		AssignCommand(oNPC, ClearAllActions());
		AssignCommand(oNPC, ActionJumpToLocation(GetLocation(oWp_no_exit_npc1)));
	}
	if (GetIsObjectValid(object11)) {
		AssignCommand(object11, ClearAllActions());
		AssignCommand(object11, ActionJumpToLocation(GetLocation(oWp_no_exit_npc2)));
	}
	if (GetIsObjectValid(object13)) {
		AssignCommand(object13, ClearAllActions());
		AssignCommand(object13, ActionJumpToLocation(GetLocation(oWp_no_exit_npc3)));
	}
	SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
	DelayCommand(0.1, AssignCommand(GetFirstPC(), ClearAllActions()));
	DelayCommand(0.1, AssignCommand(GetFirstPC(), ActionBarkString(128414)));
}

