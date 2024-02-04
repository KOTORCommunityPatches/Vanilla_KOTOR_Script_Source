void main() {
	object oVisquis = GetObjectByTag("Visquis", 0);
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 30, 1);
	ClearAllActions();
	DelayCommand(1.0, AssignCommand(oVisquis, ActionStartConversation(GetFirstPC(), "305vis", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}