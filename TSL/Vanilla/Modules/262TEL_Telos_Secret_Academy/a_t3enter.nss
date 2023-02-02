void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 30, 1);
	object oT3M4 = GetObjectByTag("T3M4", 0);
	if ((!GetIsObjectValid(oT3M4))) {
		return;
	}
	AssignCommand(oT3M4, ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
