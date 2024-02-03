void main() {
	object oMira = GetObjectByTag("Mira", 0);
	SwitchPlayerCharacter(0);
	DelayCommand(0.5, ActionStartConversation(oMira, "305mira_b", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

