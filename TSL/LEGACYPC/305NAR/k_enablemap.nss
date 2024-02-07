void main() {
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	if ((GetGlobalNumber("305NAR_PC_Saved") == 0)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 30, 1);
	DisableMap(0);
	AssignCommand(OBJECT_SELF, ClearAllActions());
	AssignCommand(OBJECT_SELF, ActionStartConversation(GetFirstPC(), "mapon", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

