void main() {
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	if ((GetEnteringObject() != GetPartyLeader())) {
		return;
	}
	SetLocalBoolean(GetObjectByTag("351_Mine_Dlg", 0), 30, 1);
	SetLocalBoolean(GetObjectByTag("351_Mine_Dlg2", 0), 30, 1);
	object oGotoHolo = GetObjectByTag("GotoHolo", 0);
	if ((!GetIsObjectValid(oGotoHolo))) {
		return;
	}
	ClearAllActions();
	AssignCommand(oGotoHolo, ActionStartConversation(GetFirstPC(), "351Mine", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}