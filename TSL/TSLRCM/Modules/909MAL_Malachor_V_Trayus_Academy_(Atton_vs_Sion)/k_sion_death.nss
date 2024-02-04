void main() {
	object oPC = GetFirstPC();
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oPC, CancelCombat(oPC));
	SetGlobalNumber("903_Atton_Sion", 1);
	object oLeader = GetPartyLeader();
	DelayCommand(3.0, AssignCommand(oLeader, ActionStartConversation(oLeader, "attsion", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}