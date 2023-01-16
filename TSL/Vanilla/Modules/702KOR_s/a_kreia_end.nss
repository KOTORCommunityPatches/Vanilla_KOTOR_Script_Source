void main() {
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetFadeUntilScript();
	DestroyObject(GetObjectByTag("SithAssassin1", 1), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("SithAssassin", 0), 0.0, 0, 0.0, 0);
	object oDarthSion = GetObjectByTag("DarthSion", 0);
	SetPartyLeader(0xFFFFFFFF);
	object oNPC = GetFirstPC();
	AssignCommand(oNPC, ClearAllActions());
	AssignCommand(oNPC, ActionJumpToObject(GetObjectByTag("sp_pc_end1", 0), 1));
	oNPC = GetPartyMemberByIndex(1);
	AssignCommand(oNPC, ClearAllActions());
	AssignCommand(oNPC, ActionJumpToObject(GetObjectByTag("sp_pc1_end1", 0), 1));
	oNPC = GetPartyMemberByIndex(2);
	AssignCommand(oNPC, ClearAllActions());
	AssignCommand(oNPC, ActionJumpToObject(GetObjectByTag("sp_pc2_end1", 0), 1));
	SetGlobalFadeIn(0.5, 0.5, 0.0, 0.0, 0.0);
	SetCommandable(1, oDarthSion);
	ChangeToStandardFaction(oDarthSion, 5);
	AssignCommand(oDarthSion, SurrenderToEnemies());
	AssignCommand(oDarthSion, ClearAllActions());
	AssignCommand(oDarthSion, ActionJumpToObject(GetObjectByTag("wp_sion_end", 0), 1));
	AssignCommand(oDarthSion, ActionStartConversation(GetFirstPC(), "sion", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

