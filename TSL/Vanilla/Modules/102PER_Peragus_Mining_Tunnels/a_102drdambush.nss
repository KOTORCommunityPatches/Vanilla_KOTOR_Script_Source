void main() {
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 30, 1);
	object oMk2Droid1 = GetObjectByTag("Mk2Droid1", 0);
	if ((!GetIsObjectValid(oMk2Droid1))) {
		return;
	}
	ClearAllActions();
	AssignCommand(oMk2Droid1, ActionStartConversation(GetFirstPC(), "Mk2Droid", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

