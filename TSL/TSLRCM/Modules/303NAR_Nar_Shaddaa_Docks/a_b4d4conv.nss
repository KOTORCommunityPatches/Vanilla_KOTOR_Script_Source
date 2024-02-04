void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 31)) {
		return;
	}
	object oB4D4 = GetObjectByTag("B4D4", 0);
	if (GetIsObjectValid(oB4D4)) {
		SetLocalBoolean(OBJECT_SELF, 31, 1);
		AssignCommand(oB4D4, ClearAllActions());
		AssignCommand(oB4D4, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}