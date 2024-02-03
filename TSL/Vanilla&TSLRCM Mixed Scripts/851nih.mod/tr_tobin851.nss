void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetFirstPC())) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	object oTobin = GetObjectByTag("tobin", 0);
	SetLocalBoolean(OBJECT_SELF, 30, 1);
	AssignCommand(oTobin, ActionStartConversation(oEntering, "851tobin", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

