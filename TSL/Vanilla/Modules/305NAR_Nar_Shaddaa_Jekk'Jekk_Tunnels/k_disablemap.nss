void main() {
	if ((GetEnteringObject() != GetFirstPC())) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 30, 1);
	DisableMap(1);
	DelayCommand(0.5, AssignCommand(OBJECT_SELF, ClearAllActions()));
	DelayCommand(0.5, AssignCommand(OBJECT_SELF, ActionStartConversation(GetFirstPC(), "map", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}
