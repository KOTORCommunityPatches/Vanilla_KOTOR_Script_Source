void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 31)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 31, 1);
	object oB4R5 = GetObjectByTag("B4R5", 0);
	AssignCommand(oB4R5, ClearAllActions());
	AssignCommand(oB4R5, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
