void main() {
	object oWP_PC_JMP1 = GetObjectByTag("WP_PC_JMP1", 0);
	ClearAllActions();
	AssignCommand(GetPCSpeaker(), ActionJumpToLocation(GetLocation(oWP_PC_JMP1)));
	AssignCommand(GetObjectByTag("DroCon", 0), ActionStartConversation(GetFirstPC(), "voice", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
