void main() {
	SetLocalBoolean(GetObjectByTag("ComputerPanel", 0), 35, 1);
	AssignCommand(GetObjectByTag("atton", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("atton", 0), ActionStartConversation(GetFirstPC(), "203atton", 0, 1, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

