void main() {
	if ((GetEnteringObject() == GetFirstPC())) {
		object oAtton = GetObjectByTag("Atton", 0);
		if (GetLocalBoolean(OBJECT_SELF, 30)) {
			return;
		}
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		SetLocalBoolean(oAtton, 36, 1);
		ClearAllActions();
		PlaySound("evt_commopen");
		if (IsStealthed(GetFirstPC())) {
			SetKeepStealthInDialog(1);
		}
		AssignCommand(oAtton, ActionStartConversation(GetFirstPC(), "102Atton", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}