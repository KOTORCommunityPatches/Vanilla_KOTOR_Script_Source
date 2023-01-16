void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 31)) {
		return;
	}
	if ((GetGlobalNumber("300NAR_T3M4") == 4)) {
		SetLocalBoolean(OBJECT_SELF, 31, 1);
		object oHK50 = GetObjectByTag("HK50", 0);
		SetLocalBoolean(oHK50, 31, 1);
		AssignCommand(oHK50, ClearAllActions());
		AssignCommand(oHK50, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

