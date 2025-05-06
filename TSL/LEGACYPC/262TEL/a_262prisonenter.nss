void main() {
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	if ((GetGlobalNumber("262TEL_CNPC_Freed") > 0)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 30, 1);
	object oKreia = GetObjectByTag("Kreia", 0);
	if ((!GetIsObjectValid(oKreia))) {
		return;
	}
	DelayCommand(0.5, AssignCommand(oKreia, ClearAllActions()));
	DelayCommand(0.5, AssignCommand(oKreia, ActionStartConversation(GetFirstPC(), "262Kreia", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}

