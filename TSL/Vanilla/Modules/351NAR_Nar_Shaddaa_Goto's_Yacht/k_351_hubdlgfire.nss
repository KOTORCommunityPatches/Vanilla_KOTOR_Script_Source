void main() {
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	if ((GetEnteringObject() != GetFirstPC())) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 30, 1);
	object oGotoHolo = GetObjectByTag("GotoHolo", 0);
	if ((!GetIsObjectValid(oGotoHolo))) {
		return;
	}
	ClearAllActions();
	AssignCommand(oGotoHolo, ActionStartConversation(GetFirstPC(), "351Hub", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
