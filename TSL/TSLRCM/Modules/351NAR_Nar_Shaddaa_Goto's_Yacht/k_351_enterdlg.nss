void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetFirstPC())) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 30, 1);
	object oGotoHolo = GetObjectByTag("GotoHolo", 0);
	if ((!GetIsObjectValid(oGotoHolo))) {
		return;
	}
	AssignCommand(oGotoHolo, ClearAllActions());
	AssignCommand(oGotoHolo, ActionStartConversation(GetFirstPC(), "gotocut1", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}