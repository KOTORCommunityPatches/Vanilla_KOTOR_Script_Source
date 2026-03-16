void main() {
	if ((GetEnteringObject() == GetPartyLeader())) {
		if (GetLocalBoolean(OBJECT_SELF, 30)) {
			return;
		}
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		object oRutum = GetObjectByTag("Rutum", 0);
		if ((!GetIsObjectValid(oRutum))) {
			return;
		}
		AssignCommand(oRutum, ClearAllActions());
		AssignCommand(oRutum, ActionStartConversation(GetFirstPC(), "Rutum", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

