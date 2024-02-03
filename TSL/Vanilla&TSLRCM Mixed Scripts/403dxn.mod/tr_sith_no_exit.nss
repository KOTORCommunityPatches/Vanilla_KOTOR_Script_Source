void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (((((GetGlobalNumber("403DXN_Sith_Attack") == 1) || (GetGlobalNumber("403DXN_Sith_Attack") == 2)) || (GetGlobalNumber("403DXN_Sith_Attack") == 3)) || (GetGlobalNumber("403DXN_Sith_Attack") == 4))) {
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
		return;
	}
	if (((GetGlobalNumber("403DXN_Second_Visit") == 1) && (GetGlobalNumber("506OND_End") == 0))) {
		SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
		SetFadeUntilScript();
		object object17 = GetObjectByTag("wp_no_exit_npc1", 0);
		object object19 = GetObjectByTag("wp_no_exit_npc2", 0);
		object object21 = GetObjectByTag("wp_no_exit_npc3", 0);
		object object23 = GetPartyMemberByIndex(0);
		object object25 = GetPartyMemberByIndex(1);
		object object27 = GetPartyMemberByIndex(2);
		if (GetIsObjectValid(object23)) {
			AssignCommand(object23, ClearAllActions());
			AssignCommand(object23, ActionJumpToLocation(GetLocation(object17)));
		}
		if (GetIsObjectValid(object25)) {
			AssignCommand(object25, ClearAllActions());
			AssignCommand(object25, ActionJumpToLocation(GetLocation(object19)));
		}
		if (GetIsObjectValid(object27)) {
			AssignCommand(object27, ClearAllActions());
			AssignCommand(object27, ActionJumpToLocation(GetLocation(object21)));
		}
		SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
		DelayCommand(0.1, AssignCommand(GetFirstPC(), ClearAllActions()));
		DelayCommand(0.1, AssignCommand(GetFirstPC(), ActionBarkString(128414)));
		return;
	}
}

