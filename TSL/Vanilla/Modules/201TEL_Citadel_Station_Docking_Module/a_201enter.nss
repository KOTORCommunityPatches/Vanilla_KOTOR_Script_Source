void main() {
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 30, 1);
	object oBayControl = GetObjectByTag("BayControl", 0);
	if ((!GetIsObjectValid(oBayControl))) {
		return;
	}
	object oPC = GetFirstPC();
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oBayControl, ClearAllActions());
	AssignCommand(oBayControl, ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
