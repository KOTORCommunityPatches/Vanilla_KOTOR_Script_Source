void main() {
	object oAtton = GetObjectByTag("Atton", 0);
	if (GetLocalBoolean(GetObjectByTag("Atton", 0), 40)) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 30, 1);
	SetLocalBoolean(oAtton, 32, 1);
	ClearAllActions();
	if (IsStealthed(GetFirstPC())) {
		SetKeepStealthInDialog(1);
	}
	PlaySound("evt_commopen");
	NoClicksFor(2.0);
	DelayCommand(2.0, AssignCommand(oAtton, ActionStartConversation(GetFirstPC(), "102Atton", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}

