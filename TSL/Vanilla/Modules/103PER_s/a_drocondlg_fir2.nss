void main() {
	object oWP_PC_JMP1 = GetObjectByTag("WP_PC_JMP1", 0);
	ClearAllActions();
	SetLocalBoolean(GetObjectByTag("DroCon", 0), 30, 1);
	AssignCommand(GetObjectByTag("DroCon", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

