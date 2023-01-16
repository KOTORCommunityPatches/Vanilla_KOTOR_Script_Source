void main() {
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((oEntering == GetObjectByTag("Kreia", 0))) {
		object oPC = GetFirstPC();
		AssignCommand(oPC, ClearAllActions());
		AssignCommand(oPC, ActionPlayAnimation(3, 1.0, 100.0));
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		object oKreia = GetObjectByTag("kreia", 0);
		AssignCommand(oKreia, ClearAllActions());
		AssignCommand(oKreia, ActionStartConversation(oPC, "veteran", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

