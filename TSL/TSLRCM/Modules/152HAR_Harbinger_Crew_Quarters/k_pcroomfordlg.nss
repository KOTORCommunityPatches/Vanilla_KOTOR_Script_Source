void main() {
	if ((GetEnteringObject() == GetPartyLeader())) {
		object oKreia = GetObjectByTag("Kreia", 0);
		if (GetLocalBoolean(OBJECT_SELF, 30)) {
			return;
		}
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		AssignCommand(oKreia, ClearAllActions());
		AssignCommand(oKreia, ActionStartConversation(GetFirstPC(), "152Kreia", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}