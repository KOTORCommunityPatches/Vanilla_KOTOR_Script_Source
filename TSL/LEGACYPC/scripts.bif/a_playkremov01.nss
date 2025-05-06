void main() {
	PlayMovie("KreMov01", 0);
	object oKreia = GetObjectByTag("Kreia", 0);
	AssignCommand(oKreia, ClearAllActions());
	AssignCommand(oKreia, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

