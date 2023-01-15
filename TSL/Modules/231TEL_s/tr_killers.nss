void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetPartyLeader())) {
		return;
	}
	if ((GetGlobalNumber("202TEL_Bounty_Killers") == 4)) {
		SetGlobalNumber("202TEL_Bounty_Killers", 5);
		object oRod_killer = GetObjectByTag("rod_killer", 0);
		object oPC = GetFirstPC();
		AssignCommand(oPC, ClearAllActions());
		AssignCommand(oRod_killer, ClearAllActions());
		AssignCommand(oRod_killer, ActionStartConversation(oPC, "", 0, 1, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

