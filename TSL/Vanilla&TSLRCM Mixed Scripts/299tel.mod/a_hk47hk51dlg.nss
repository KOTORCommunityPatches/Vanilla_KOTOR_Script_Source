void main() {
	object oPC = GetFirstPC();
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oPC, ActionStartConversation(GetFirstPC(), "hk47hk51", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

