void main() {
	object oKreia = GetObjectByTag("Kreia", 0);
	DelayCommand(1.0, AssignCommand(oKreia, ClearAllActions()));
	DelayCommand(1.0, AssignCommand(oKreia, ActionStartConversation(GetFirstPC(), "305kreia", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}

