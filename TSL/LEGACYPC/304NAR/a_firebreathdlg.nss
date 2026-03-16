void main() {
	object oKreia = GetObjectByTag("Kreia", 0);
	AssignCommand(oKreia, ClearAllActions());
	AssignCommand(oKreia, ActionStartConversation(GetFirstPC(), "breath", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

