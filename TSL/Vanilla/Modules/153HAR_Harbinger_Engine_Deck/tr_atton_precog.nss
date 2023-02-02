void main() {
	object oPC = GetFirstPC();
	if ((oPC != GetEnteringObject())) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 34)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 34, 1);
	object oAtton = GetObjectByTag("atton", 0);
	if (GetIsObjectValid(oAtton)) {
		AssignCommand(oAtton, ClearAllActions());
		AssignCommand(oAtton, ActionStartConversation(oPC, "attonpre", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
