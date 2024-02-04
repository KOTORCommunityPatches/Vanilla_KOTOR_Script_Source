void main() {
	if (GetGlobalBoolean("231TEL_Shield_Network")) {
		return;
	}
	object oPC = GetFirstPC();
	object object3 = GetNextPC();
	object object5 = GetNextPC();
	if (GetIsInCombat(oPC, 1)) {
		return;
	}
	if (GetIsInCombat(object3, 1)) {
		return;
	}
	if (GetIsInCombat(object5, 1)) {
		return;
	}
	SetGlobalBoolean("231TEL_Shield_Network", 1);
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetFadeUntilScript();
	object oWP_pc_1 = GetObjectByTag("WP_pc_1", 0);
	object oWP_pc_2 = GetObjectByTag("WP_pc_2", 0);
	object oWP_pc_3 = GetObjectByTag("WP_pc_3", 0);
	SetSoloMode(0);
	SetPartyLeader(1);
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(object3, ClearAllActions());
	AssignCommand(object5, ClearAllActions());
	AssignCommand(oPC, ActionJumpToLocation(GetLocation(oWP_pc_1)));
	AssignCommand(object3, ActionJumpToLocation(GetLocation(oWP_pc_2)));
	AssignCommand(object5, ActionJumpToLocation(GetLocation(oWP_pc_3)));
	SetGlobalNumber("231TEL_BaoDur", 1);
	DelayCommand(1.0, SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0));
	DelayCommand(1.0, AssignCommand(GetObjectByTag("baodur", 0), ActionStartConversation(GetFirstPC(), "233bdur", 0, 1, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}