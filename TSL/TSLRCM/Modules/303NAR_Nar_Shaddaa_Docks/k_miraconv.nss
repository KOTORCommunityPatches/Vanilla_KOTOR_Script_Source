void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 31)) {
		return;
	}
	object oMira = GetObjectByTag("Mira", 0);
	if (GetIsObjectValid(oMira)) {
		SetLocalBoolean(OBJECT_SELF, 31, 1);
		AssignCommand(oMira, ClearAllActions());
		AssignCommand(oMira, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}