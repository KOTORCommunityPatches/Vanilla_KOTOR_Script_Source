void main() {
	object oHK50 = GetObjectByTag("HK50", 0);
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 31)) {
		return;
	}
	if (GetIsObjectValid(oHK50)) {
		SetLocalBoolean(OBJECT_SELF, 31, 1);
		AssignCommand(oHK50, ClearAllActions());
		AssignCommand(oHK50, ActionStartConversation(GetFirstPC(), "hk50", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}