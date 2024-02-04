void main() {
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((oEntering == GetObjectByTag("Kreia", 0))) {
		AssignCommand(GetFirstPC(), ClearAllActions());
		AssignCommand(GetFirstPC(), ActionPlayAnimation(3, 1.0, 100.0));
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		AssignCommand(GetObjectByTag("Kreia", 0), ClearAllActions());
		AssignCommand(GetObjectByTag("Kreia", 0), ActionStartConversation(GetFirstPC(), "veteran", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}