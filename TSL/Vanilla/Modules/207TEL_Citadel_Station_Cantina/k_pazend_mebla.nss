void main() {
	object oMebla = GetObjectByTag("mebla", 0);
	AssignCommand(oMebla, ClearAllActions());
	AssignCommand(oMebla, ActionStartConversation(GetFirstPC(), "mebla", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

