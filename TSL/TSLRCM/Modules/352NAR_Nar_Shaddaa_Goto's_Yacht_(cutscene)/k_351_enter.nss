void main() {
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 30, 1);
	object oG0T0Temp = GetObjectByTag("G0T0Temp", 0);
	if ((!GetIsObjectValid(oG0T0Temp))) {
		return;
	}
	object oPC = GetFirstPC();
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oG0T0Temp, ClearAllActions());
	AssignCommand(oG0T0Temp, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}