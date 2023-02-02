void main() {
	if ((GetEnteringObject() == GetFirstPC())) {
		if (GetLocalBoolean(GetObjectByTag("Atton", 0), 40)) {
			return;
		}
		if (GetLocalBoolean(GetObjectByTag("Atton", 0), 34)) {
			return;
		}
		object oAtton = GetObjectByTag("Atton", 0);
		if ((GetGlobalNumber("102PER_Atton_Com") == 1)) {
			return;
		}
		SetGlobalNumber("102PER_Atton_Com", 1);
		SetLocalBoolean(oAtton, 33, 1);
		ClearAllActions();
		if (IsStealthed(GetFirstPC())) {
			SetKeepStealthInDialog(1);
		}
		PlaySound("evt_commopen");
		AssignCommand(oAtton, ActionStartConversation(GetFirstPC(), "102Atton", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
