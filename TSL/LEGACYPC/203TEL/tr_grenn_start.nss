void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetFirstPC())) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
	SetAreaUnescapable(1);
	object o203_Gren = GetObjectByTag("203_Gren", 0);
	object oPC = GetFirstPC();
	AssignCommand(o203_Gren, ClearAllActions());
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(o203_Gren, ActionStartConversation(oPC, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

